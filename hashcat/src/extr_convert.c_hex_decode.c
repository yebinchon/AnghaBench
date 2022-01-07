
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_to_u8 (int const*) ;

int hex_decode (const u8 *in_buf, const int in_len, u8 *out_buf)
{
  for (int i = 0, j = 0; i < in_len; i += 2, j += 1)
  {
    out_buf[j] = hex_to_u8 (&in_buf[i]);
  }

  return in_len / 2;
}
