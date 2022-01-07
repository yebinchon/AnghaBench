
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int dummy; } ;


 struct multicall_space __xen_mc_entry (size_t) ;
 int xen_mc_batch () ;

__attribute__((used)) static inline struct multicall_space xen_mc_entry(size_t args)
{
 xen_mc_batch();
 return __xen_mc_entry(args);
}
