
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool printable_ascii (const u8 *buf, const size_t len)
{
  for (size_t i = 0; i < len; i++)
  {
    const u8 c = buf[i];

    if (c < 0x20) return 0;
    if (c > 0x7e) return 0;
  }

  return 1;
}
