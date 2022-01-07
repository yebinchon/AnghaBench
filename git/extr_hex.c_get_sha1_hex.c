
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rawsz; } ;


 int hex2chr (char const*) ;
 TYPE_1__* the_hash_algo ;

int get_sha1_hex(const char *hex, unsigned char *sha1)
{
 int i;
 for (i = 0; i < the_hash_algo->rawsz; i++) {
  int val = hex2chr(hex);
  if (val < 0)
   return -1;
  *sha1++ = val;
  hex += 2;
 }
 return 0;
}
