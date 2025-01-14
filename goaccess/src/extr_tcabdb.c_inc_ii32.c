
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MIN ;
 int LOG_DEBUG (char*) ;
 scalar_t__ tcadbaddint (void*,int*,int,int) ;

__attribute__((used)) static int
inc_ii32 (void *hash, int key, int inc)
{
  if (!hash)
    return -1;


  if (tcadbaddint (hash, &key, sizeof (int), inc) == INT_MIN)
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
