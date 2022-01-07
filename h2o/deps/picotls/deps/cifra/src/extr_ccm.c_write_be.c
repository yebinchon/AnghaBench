
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int assert (int) ;

__attribute__((used)) static void write_be(uint8_t *out, size_t value, size_t bytes)
{
  while (bytes)
  {
    out[bytes - 1] = value & 0xff;
    value >>= 8;
    bytes--;
  }

  assert(value == 0);
}
