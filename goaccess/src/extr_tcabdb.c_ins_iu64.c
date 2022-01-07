
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int LOG_DEBUG (char*) ;
 int tcadbput (void*,int*,int,int *,int) ;

__attribute__((used)) static int
ins_iu64 (void *hash, int key, uint64_t value)
{
  if (!hash)
    return -1;


  if (!tcadbput (hash, &key, sizeof (int), &value, sizeof (uint64_t)))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
