
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Interface ;


 int ACCESS_REG ;
 int ACCESS_WRITE ;
 int REG_VERSION ;
 int ppc6_send_cmd (int *,int) ;
 int ppc6_wr_data_byte (int *,int) ;

__attribute__((used)) static void ppc6_wr_extout(Interface *ppc, u8 regdata)
{
 ppc6_send_cmd(ppc,(REG_VERSION | ACCESS_REG | ACCESS_WRITE));

 ppc6_wr_data_byte(ppc, (u8)((regdata & 0x03) << 6));
}
