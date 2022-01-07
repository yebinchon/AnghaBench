
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash (void const*,int ,int,size_t*) ;
 int strlen (char const*) ;

void
ckh_string_hash(const void *key, size_t r_hash[2]) {
 hash(key, strlen((const char *)key), 0x94122f33U, r_hash);
}
