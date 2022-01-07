
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {scalar_t__ type; int config; int exclude_user; int exclude_kernel; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct p4_event_bind {int opcode; } ;


 int EINVAL ;
 int P4_CCCR_ESEL (unsigned int) ;
 int P4_CONFIG_MASK ;
 unsigned int P4_OPCODE_ESEL (int ) ;
 scalar_t__ PERF_TYPE_RAW ;
 int get_cpu () ;
 struct p4_event_bind* p4_config_get_bind (int) ;
 int p4_config_pack_cccr (int ) ;
 int p4_config_pack_escr (int ) ;
 int p4_default_cccr_conf (int) ;
 int p4_default_escr_conf (int,int ,int ) ;
 scalar_t__ p4_ht_active () ;
 scalar_t__ p4_ht_thread (int) ;
 int p4_set_ht_bit (int) ;
 int p4_validate_raw_event (struct perf_event*) ;
 int put_cpu () ;
 int x86_setup_perfctr (struct perf_event*) ;

__attribute__((used)) static int p4_hw_config(struct perf_event *event)
{
 int cpu = get_cpu();
 int rc = 0;
 u32 escr, cccr;







 cccr = p4_default_cccr_conf(cpu);
 escr = p4_default_escr_conf(cpu, event->attr.exclude_kernel,
      event->attr.exclude_user);
 event->hw.config = p4_config_pack_escr(escr) |
      p4_config_pack_cccr(cccr);

 if (p4_ht_active() && p4_ht_thread(cpu))
  event->hw.config = p4_set_ht_bit(event->hw.config);

 if (event->attr.type == PERF_TYPE_RAW) {
  struct p4_event_bind *bind;
  unsigned int esel;




  event->attr.config &= P4_CONFIG_MASK;

  rc = p4_validate_raw_event(event);
  if (rc)
   goto out;





  event->hw.config |= event->attr.config;
  bind = p4_config_get_bind(event->attr.config);
  if (!bind) {
   rc = -EINVAL;
   goto out;
  }
  esel = P4_OPCODE_ESEL(bind->opcode);
  event->hw.config |= p4_config_pack_cccr(P4_CCCR_ESEL(esel));
 }

 rc = x86_setup_perfctr(event);
out:
 put_cpu();
 return rc;
}
