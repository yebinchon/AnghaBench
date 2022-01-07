
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int PIA ;


 int ATAPI_DATA ;
 int PPCSTRUCT (int *) ;
 int ppc6_rd_port16_blk (int ,int ,char*,int) ;

__attribute__((used)) static void bpck6_read_block( PIA *pi, char * buf, int len )
{
 ppc6_rd_port16_blk(PPCSTRUCT(pi),ATAPI_DATA,buf,(u32)len>>1);
}
