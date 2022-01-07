
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_ss32 (void*,char const*) ;
 void* ht_hostnames ;

char *
ht_get_hostname (const char *host)
{
  void *hash = ht_hostnames;

  if (!hash)
    return ((void*)0);

  return get_ss32 (hash, host);
}
