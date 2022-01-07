
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ldc_version {int dummy; } ;
struct TYPE_2__ {scalar_t__ u_data; } ;
struct ldc_packet {int stype; TYPE_1__ u; } ;
struct ldc_channel {int dummy; } ;


 int LDC_ABORT (struct ldc_channel*) ;



 int process_ver_ack (struct ldc_channel*,struct ldc_version*) ;
 int process_ver_info (struct ldc_channel*,struct ldc_version*) ;
 int process_ver_nack (struct ldc_channel*,struct ldc_version*) ;

__attribute__((used)) static int process_version(struct ldc_channel *lp,
      struct ldc_packet *p)
{
 struct ldc_version *vp;

 vp = (struct ldc_version *) p->u.u_data;

 switch (p->stype) {
 case 129:
  return process_ver_info(lp, vp);

 case 130:
  return process_ver_ack(lp, vp);

 case 128:
  return process_ver_nack(lp, vp);

 default:
  return LDC_ABORT(lp);
 }
}
