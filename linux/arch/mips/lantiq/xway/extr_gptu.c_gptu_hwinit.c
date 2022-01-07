
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLC_RMC ;
 int CLC_SUSPEND ;
 int GPTU_CLC ;
 int GPTU_IRNCR ;
 int GPTU_IRNEN ;
 int gptu_w32 (int,int ) ;

__attribute__((used)) static void gptu_hwinit(void)
{
 gptu_w32(0x00, GPTU_IRNEN);
 gptu_w32(0xff, GPTU_IRNCR);
 gptu_w32(CLC_RMC | CLC_SUSPEND, GPTU_CLC);
}
