
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_to_u8 (int const*) ;
 int memset (int *,int ,size_t const) ;

size_t exec_unhexify (const u8 *in_buf, const size_t in_len, u8 *out_buf, const size_t out_sz)
{
  size_t i, j;

  for (i = 0, j = 5; j < in_len - 1; i += 1, j += 2)
  {
    const u8 c = hex_to_u8 (&in_buf[j]);

    out_buf[i] = c;
  }

  memset (out_buf + i, 0, out_sz - i);

  return (i);
}
