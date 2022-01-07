
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* find_node_by_prop_value (int *,char*,char*,int) ;

__attribute__((used)) static inline void *find_node_by_linuxphandle(const u32 linuxphandle)
{
 return find_node_by_prop_value(((void*)0), "linux,phandle",
   (char *)&linuxphandle, sizeof(u32));
}
