
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLC_DISABLE ;
 int GPTU_CLC ;
 int GPTU_IRNCR ;
 int GPTU_IRNEN ;
 int gptu_w32 (int,int ) ;

__attribute__((used)) static void gptu_hwexit(void)
{
 gptu_w32(0x00, GPTU_IRNEN);
 gptu_w32(0xff, GPTU_IRNCR);
 gptu_w32(CLC_DISABLE, GPTU_CLC);
}
