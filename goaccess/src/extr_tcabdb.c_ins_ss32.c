
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG (char*) ;
 int tcadbput2 (void*,char const*,char const*) ;

__attribute__((used)) static int
ins_ss32 (void *hash, const char *key, const char *value)
{
  if (!hash)
    return -1;


  if (!tcadbput2 (hash, key, value))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
