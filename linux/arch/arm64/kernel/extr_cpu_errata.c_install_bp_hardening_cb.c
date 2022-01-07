
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bp_hardening_cb_t ;
struct TYPE_2__ {int fn; } ;


 int __this_cpu_write (int ,int ) ;
 TYPE_1__ bp_hardening_data ;

__attribute__((used)) static void install_bp_hardening_cb(bp_hardening_cb_t fn,
          const char *hyp_vecs_start,
          const char *hyp_vecs_end)
{
 __this_cpu_write(bp_hardening_data.fn, fn);
}
