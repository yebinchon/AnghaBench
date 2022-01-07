
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int RTL8366RB_PECR ;
 int rtl8366_smi_rmwr (struct rtl8366_smi*,int ,int,int) ;

__attribute__((used)) static int rtl8366rb_enable_port(struct rtl8366_smi *smi, int port, int enable)
{
 return rtl8366_smi_rmwr(smi, RTL8366RB_PECR, (1 << port),
    (enable) ? 0 : (1 << port));
}
