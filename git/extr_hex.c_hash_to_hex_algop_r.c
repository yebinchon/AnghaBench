
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_hash_algo {int rawsz; } ;



char *hash_to_hex_algop_r(char *buffer, const unsigned char *hash,
     const struct git_hash_algo *algop)
{
 static const char hex[] = "0123456789abcdef";
 char *buf = buffer;
 int i;

 for (i = 0; i < algop->rawsz; i++) {
  unsigned int val = *hash++;
  *buf++ = hex[val >> 4];
  *buf++ = hex[val & 0xf];
 }
 *buf = '\0';

 return buffer;
}
