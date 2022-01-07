
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



size_t base64_encode (u8 (*f) (const u8), const u8 *in_buf, const size_t in_len, u8 *out_buf)
{
  const u8 *in_ptr = in_buf;

  u8 *out_ptr = out_buf;

  for (size_t i = 0; i < in_len; i += 3)
  {
    const u8 f0 = ((i + 0) < in_len) ? in_ptr[0] : 0;
    const u8 f1 = ((i + 1) < in_len) ? in_ptr[1] : 0;
    const u8 f2 = ((i + 2) < in_len) ? in_ptr[2] : 0;

    const u8 out_val0 = f ( ((f0 >> 2) & 0x3f));
    const u8 out_val1 = f (((f0 << 4) & 0x30) | ((f1 >> 4) & 0x0f));
    const u8 out_val2 = f (((f1 << 2) & 0x3c) | ((f2 >> 6) & 0x03));
    const u8 out_val3 = f ( ((f2 >> 0) & 0x3f));

    out_ptr[0] = out_val0 & 0x7f;
    out_ptr[1] = out_val1 & 0x7f;
    out_ptr[2] = out_val2 & 0x7f;
    out_ptr[3] = out_val3 & 0x7f;

    in_ptr += 3;
    out_ptr += 4;
  }

  int out_len = (int) (((0.5 + in_len) * 8) / 6);

  while (out_len % 4)
  {
    out_buf[out_len] = '=';

    out_len++;
  }

  return out_len;
}
