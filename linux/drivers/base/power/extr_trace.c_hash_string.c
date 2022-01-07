
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int hash_string(unsigned int seed, const char *data, unsigned int mod)
{
 unsigned char c;
 while ((c = *data++) != 0) {
  seed = (seed << 16) + (seed << 6) - seed + c;
 }
 return seed % mod;
}
