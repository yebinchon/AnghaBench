
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG (char*) ;
 int strlen (char const*) ;
 int tcadbput (void*,int*,int,char const*,int ) ;

__attribute__((used)) static int
ins_is32 (void *hash, int key, const char *value)
{
  if (!hash)
    return -1;


  if (!tcadbput (hash, &key, sizeof (int), value, strlen (value)))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
