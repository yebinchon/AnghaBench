
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drmem_lmb {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int dlpar_remove_lmb(struct drmem_lmb *lmb)
{
 return -EOPNOTSUPP;
}
