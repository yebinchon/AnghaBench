
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG (char*) ;
 int strlen (char const*) ;
 int tcadbput (void*,char const*,int ,int*,int) ;

__attribute__((used)) static int
ins_si32 (void *hash, const char *key, int value)
{
  if (!hash)
    return -1;


  if (!tcadbput (hash, key, strlen (key), &value, sizeof (int)))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
