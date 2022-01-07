
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; int type; } ;
struct TYPE_6__ {TYPE_2__ header; int data; } ;
struct TYPE_4__ {int length; } ;
struct vt220_sccb {TYPE_3__ msg; TYPE_1__ header; } ;


 int EARLY_SCCB_SIZE ;
 int EVTYP_VT220MSG ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int memcpy (int *,char const*,unsigned int) ;
 int memset (struct vt220_sccb*,int ,int) ;
 int sclp_early_cmd (int ,struct vt220_sccb*) ;
 scalar_t__ sclp_early_sccb ;

__attribute__((used)) static void sclp_early_print_vt220(const char *str, unsigned int len)
{
 struct vt220_sccb *sccb;

 sccb = (struct vt220_sccb *) sclp_early_sccb;
 if (sizeof(*sccb) + len >= EARLY_SCCB_SIZE)
  len = EARLY_SCCB_SIZE - sizeof(*sccb);
 memset(sccb, 0, sizeof(*sccb));
 memcpy(&sccb->msg.data, str, len);
 sccb->header.length = sizeof(*sccb) + len;
 sccb->msg.header.length = sizeof(sccb->msg) + len;
 sccb->msg.header.type = EVTYP_VT220MSG;
 sclp_early_cmd(SCLP_CMDW_WRITE_EVENT_DATA, sccb);
}
