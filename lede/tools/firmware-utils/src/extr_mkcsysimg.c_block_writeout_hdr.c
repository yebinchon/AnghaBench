
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct csys_header {void* size; void* addr; int sig; } ;
struct csys_block {scalar_t__ size_hdr; scalar_t__ addr; scalar_t__ size; scalar_t__ size_csum; int sig; } ;
typedef int hdr ;
typedef int FILE ;


 int DBG (int,char*) ;
 void* HOST_TO_LE32 (scalar_t__) ;
 int memcpy (int ,int ,int) ;
 int write_out_data (int *,int *,int,int *) ;

int
block_writeout_hdr(FILE *outfile, struct csys_block *block)
{
 struct csys_header hdr;
 int res;

 if (block->size_hdr == 0)
  return 0;


 memcpy(hdr.sig, block->sig, 4);
 hdr.addr = HOST_TO_LE32(block->addr);
 hdr.size = HOST_TO_LE32(block->size - block->size_hdr - block->size_csum);

 DBG(1,"writing header for block");
 res = write_out_data(outfile, (uint8_t *)&hdr, sizeof(hdr),((void*)0));
 return res;

}
