
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_version {scalar_t__ major; scalar_t__ minor; } ;
struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int LDC_ABORT (struct ldc_channel*) ;
 int LDC_INFO ;
 int LDC_VERS ;
 struct ldc_version* find_by_major (scalar_t__) ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,struct ldc_version*,int,unsigned long*) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int process_ver_nack(struct ldc_channel *lp, struct ldc_version *vp)
{
 struct ldc_version *vap;
 struct ldc_packet *p;
 unsigned long new_tail;

 if (vp->major == 0 && vp->minor == 0)
  return LDC_ABORT(lp);

 vap = find_by_major(vp->major);
 if (!vap)
  return LDC_ABORT(lp);

 p = handshake_compose_ctrl(lp, LDC_INFO, LDC_VERS,
        vap, sizeof(*vap),
        &new_tail);
 if (!p)
  return LDC_ABORT(lp);

 return send_tx_packet(lp, p, new_tail);
}
