
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static void fill(uint8_t *buf, size_t len, uint8_t b)
{
  for (size_t i = 0; i < len; i++)
    buf[i] = b++;
}
