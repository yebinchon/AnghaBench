
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseries_hp_errorlog {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int dlpar_memory_remove(struct pseries_hp_errorlog *hp_elog)
{
 return -EOPNOTSUPP;
}
