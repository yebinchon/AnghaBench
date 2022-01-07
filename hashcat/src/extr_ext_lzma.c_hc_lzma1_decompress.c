
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef int SizeT ;
typedef TYPE_1__ ISzAlloc ;
typedef int ELzmaStatus ;
typedef int Byte ;


 int LZMA_FINISH_ANY ;
 int LZMA_PROPS_SIZE ;
 int LzmaDecode (unsigned char*,int *,unsigned char const*,int *,int const*,int ,int ,int *,TYPE_1__*) ;
 int hc_lzma_alloc ;
 int hc_lzma_free ;

int hc_lzma1_decompress (const unsigned char *in, SizeT *in_len, unsigned char *out, SizeT *out_len, const char *props)
{
  ISzAlloc hc_lzma_mem_alloc = {hc_lzma_alloc, hc_lzma_free};

  ELzmaStatus status;




  return LzmaDecode (out, out_len, in, in_len, (const Byte *) props, LZMA_PROPS_SIZE, LZMA_FINISH_ANY, &status, &hc_lzma_mem_alloc);
}
