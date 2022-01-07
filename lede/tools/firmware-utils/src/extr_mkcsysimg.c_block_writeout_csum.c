
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct csys_block {int size_csum; int css; } ;
typedef int FILE ;


 int DBG (int,char*) ;
 int HOST_TO_LE16 (int ) ;
 int csum_get (int ) ;
 int write_out_data (int *,int *,int ,int *) ;

int
block_writeout_csum(FILE *outfile, struct csys_block *block)
{
 uint16_t csum;
 int res;

 if (block->size_csum == 0)
  return 0;

 DBG(1,"writing checksum for block");
 csum = HOST_TO_LE16(csum_get(block->css));
 res = write_out_data(outfile, (uint8_t *)&csum, block->size_csum, ((void*)0));

 return res;
}
