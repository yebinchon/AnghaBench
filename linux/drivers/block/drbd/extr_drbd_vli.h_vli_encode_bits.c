
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bitstream {int dummy; } ;


 int __vli_encode_bits (int *,int ) ;
 int bitstream_put_bits (struct bitstream*,int ,int) ;
 int code ;

__attribute__((used)) static inline int vli_encode_bits(struct bitstream *bs, u64 in)
{
 u64 code = code;
 int bits = __vli_encode_bits(&code, in);

 if (bits <= 0)
  return bits;

 return bitstream_put_bits(bs, code, bits);
}
