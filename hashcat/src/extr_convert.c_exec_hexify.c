
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 size_t const PW_MAX ;
 int u8_to_hex (scalar_t__ const,scalar_t__*) ;

void exec_hexify (const u8 *buf, const size_t len, u8 *out)
{
  const size_t max_len = (len > PW_MAX) ? PW_MAX : len;

  for (int i = (int) max_len - 1, j = i * 2; i >= 0; i -= 1, j -= 2)
  {
    u8_to_hex (buf[i], out + j);
  }

  out[max_len * 2] = 0;
}
