
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH_LEN ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char const*,char*,int) ;

__attribute__((used)) static inline void *find_node_by_alias(const char *alias)
{
 void *devp = finddevice("/aliases");

 if (devp) {
  char path[MAX_PATH_LEN];
  if (getprop(devp, alias, path, MAX_PATH_LEN) > 0)
   return finddevice(path);
 }

 return ((void*)0);
}
