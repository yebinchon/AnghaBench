
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sortedcache_magic_key {int offset; int key; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int sortedcache_magic_cmp(const void *key, const void *value)
{
 const struct sortedcache_magic_key *magic = key;
 const char *value_key = ((const char *)value) + magic->offset;
 return strcmp(magic->key, value_key);
}
