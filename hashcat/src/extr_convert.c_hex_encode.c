
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int u8_to_hex (int const,int *) ;

int hex_encode (const u8 *in_buf, const int in_len, u8 *out_buf)
{
  for (int i = 0, j = 0; i < in_len; i += 1, j += 2)
  {
    u8_to_hex (in_buf[i], &out_buf[j]);
  }

  return in_len * 2;
}
