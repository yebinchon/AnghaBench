
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

const char *planetcore_get_key(const char *table, const char *key)
{
 int keylen = strlen(key);

 do {
  if (!strncmp(table, key, keylen) && table[keylen] == '=')
   return table + keylen + 1;

  table += strlen(table) + 1;
 } while (strlen(table) != 0);

 return ((void*)0);
}
