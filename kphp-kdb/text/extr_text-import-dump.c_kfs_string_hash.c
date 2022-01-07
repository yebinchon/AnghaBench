
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_hash_t ;


 int md5 (unsigned char*,int ,unsigned char*) ;
 int strlen (char const*) ;

kfs_hash_t kfs_string_hash (const char *str) {
  static union {
    unsigned char output[16];
    kfs_hash_t hash;
  } tmp;
  md5 ((unsigned char *) str, strlen (str), tmp.output);
  return tmp.hash;
}
