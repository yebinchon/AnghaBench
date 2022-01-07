
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t GIT_HASH_SHA1 ;
 int * hash_algos ;
 char* hash_to_hex_algop_r (char*,unsigned char const*,int *) ;

char *sha1_to_hex_r(char *buffer, const unsigned char *sha1)
{
 return hash_to_hex_algop_r(buffer, sha1, &hash_algos[GIT_HASH_SHA1]);
}
