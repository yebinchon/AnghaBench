
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_slice {size_t len; int str; } ;
struct ref_entry {scalar_t__* name; } ;


 int strncmp (int ,scalar_t__*,size_t) ;

__attribute__((used)) static int ref_entry_cmp_sslice(const void *key_, const void *ent_)
{
 const struct string_slice *key = key_;
 const struct ref_entry *ent = *(const struct ref_entry * const *)ent_;
 int cmp = strncmp(key->str, ent->name, key->len);
 if (cmp)
  return cmp;
 return '\0' - (unsigned char)ent->name[key->len];
}
