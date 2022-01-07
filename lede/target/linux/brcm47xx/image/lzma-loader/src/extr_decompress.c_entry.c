
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trx_header {scalar_t__ magic; int* offsets; } ;
struct TYPE_3__ {int Read; } ;
typedef TYPE_1__ ILzmaInCallback ;


 int BCM4710_FLASH ;
 int EDIMAX_PS_HEADER_LEN ;
 scalar_t__ EDIMAX_PS_HEADER_MAGIC ;
 scalar_t__ KSEG1ADDR (int ) ;
 scalar_t__ LOADADDR ;
 scalar_t__ LZMA_RESULT_OK ;
 scalar_t__ LzmaDecode (int ,int ,unsigned int,unsigned int,unsigned int,TYPE_1__*,unsigned char*,unsigned int,unsigned int*) ;
 scalar_t__ TRX_MAGIC ;
 int blast_dcache (unsigned long,unsigned long) ;
 int blast_icache (unsigned long,unsigned long) ;
 unsigned char* data ;
 unsigned int get_byte () ;
 scalar_t__ offset ;
 int read_byte ;
 void stub1 (unsigned long,unsigned long,unsigned long,unsigned long) ;
 int workspace ;

void entry(unsigned long icache_size, unsigned long icache_lsize,
 unsigned long dcache_size, unsigned long dcache_lsize,
 unsigned long fw_arg0, unsigned long fw_arg1,
 unsigned long fw_arg2, unsigned long fw_arg3)
{
 unsigned int i;
 unsigned int lc;
 unsigned int lp;
 unsigned int pb;
 unsigned int osize;

 ILzmaInCallback callback;
 callback.Read = read_byte;


 for (data = ((unsigned char *) KSEG1ADDR(BCM4710_FLASH));
  ((struct trx_header *)data)->magic != TRX_MAGIC &&
  ((struct trx_header *)data)->magic != EDIMAX_PS_HEADER_MAGIC;
   data += 65536);

 if (((struct trx_header *)data)->magic == EDIMAX_PS_HEADER_MAGIC)
  data += EDIMAX_PS_HEADER_LEN;

 if (((struct trx_header *)data)->offsets[1] > 65536)
  data += ((struct trx_header *)data)->offsets[0];
 else
  data += ((struct trx_header *)data)->offsets[1];

 offset = 0;


 i = get_byte();
 lc = i % 9, i = i / 9;
 lp = i % 5, pb = i / 5;


 for (i = 0; i < 4; i++)
  get_byte();


 osize = ((unsigned int)get_byte()) +
  ((unsigned int)get_byte() << 8) +
  ((unsigned int)get_byte() << 16) +
  ((unsigned int)get_byte() << 24);


 for (i = 0; i < 4; i++)
  get_byte();


 if (LzmaDecode(workspace, ~0, lc, lp, pb, &callback,
  (unsigned char*)LOADADDR, osize, &i) == LZMA_RESULT_OK)
 {
  blast_dcache(dcache_size, dcache_lsize);
  blast_icache(icache_size, icache_lsize);


  ((void (*)(unsigned long, unsigned long, unsigned long,
   unsigned long)) LOADADDR)(fw_arg0, fw_arg1, fw_arg2,
    fw_arg3);
 }
}
