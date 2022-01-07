
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int ctrl; } ;
struct ldc_channel {int dummy; } ;


 int LDC_ABORT (struct ldc_channel*) ;




 int process_rdx (struct ldc_channel*,struct ldc_packet*) ;
 int process_rtr (struct ldc_channel*,struct ldc_packet*) ;
 int process_rts (struct ldc_channel*,struct ldc_packet*) ;
 int process_version (struct ldc_channel*,struct ldc_packet*) ;

__attribute__((used)) static int process_control_frame(struct ldc_channel *lp,
     struct ldc_packet *p)
{
 switch (p->ctrl) {
 case 128:
  return process_version(lp, p);

 case 129:
  return process_rts(lp, p);

 case 130:
  return process_rtr(lp, p);

 case 131:
  return process_rdx(lp, p);

 default:
  return LDC_ABORT(lp);
 }
}
