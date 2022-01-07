
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef void* u16 ;
struct ldc_version {void* minor; void* major; } ;
struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int EBUSY ;
 int HS ;
 int LDC_NACK ;
 int LDC_VERS ;
 struct ldc_packet* handshake_compose_ctrl (struct ldc_channel*,int ,int ,struct ldc_version*,int,unsigned long*) ;
 int ldcdbg (int ,char*,void*,void*) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int send_version_nack(struct ldc_channel *lp,
        u16 major, u16 minor)
{
 struct ldc_packet *p;
 struct ldc_version ver;
 unsigned long new_tail;

 ver.major = major;
 ver.minor = minor;

 p = handshake_compose_ctrl(lp, LDC_NACK, LDC_VERS,
       &ver, sizeof(ver), &new_tail);
 if (p) {
  ldcdbg(HS, "SEND VER NACK maj[%u] min[%u]\n",
         ver.major, ver.minor);

  return send_tx_packet(lp, p, new_tail);
 }
 return -EBUSY;
}
