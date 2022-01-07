
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ht_hostnames ;
 int ins_ss32 (void*,char const*,char const*) ;

int
ht_insert_hostname (const char *ip, const char *host)
{
  void *hash = ht_hostnames;

  if (!hash)
    return -1;

  return ins_ss32 (hash, ip, host);
}
