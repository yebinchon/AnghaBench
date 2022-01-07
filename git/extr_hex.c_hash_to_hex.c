
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hash_to_hex_algop (unsigned char const*,int ) ;
 int the_hash_algo ;

char *hash_to_hex(const unsigned char *hash)
{
 return hash_to_hex_algop(hash, the_hash_algo);
}
