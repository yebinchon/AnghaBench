
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_version {int minor; int major; } ;
struct ldc_packet {int dummy; } ;
struct ldc_channel {int flags; } ;


 int EBUSY ;
 int HS ;
 int LDC_FLAG_RESET ;
 int LDC_INFO ;
 int LDC_VERS ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,struct ldc_version*,int,unsigned long*) ;
 int ldcdbg (int ,char*,int ,int ) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;
 struct ldc_version* ver_arr ;

__attribute__((used)) static int start_handshake(struct ldc_channel *lp)
{
 struct ldc_packet *p;
 struct ldc_version *ver;
 unsigned long new_tail;

 ver = &ver_arr[0];

 ldcdbg(HS, "SEND VER INFO maj[%u] min[%u]\n",
        ver->major, ver->minor);

 p = handshake_compose_ctrl(lp, LDC_INFO, LDC_VERS,
       ver, sizeof(*ver), &new_tail);
 if (p) {
  int err = send_tx_packet(lp, p, new_tail);
  if (!err)
   lp->flags &= ~LDC_FLAG_RESET;
  return err;
 }
 return -EBUSY;
}
