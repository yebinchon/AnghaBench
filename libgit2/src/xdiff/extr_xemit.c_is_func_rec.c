
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdfile_t ;
typedef int xdemitconf_t ;
typedef int dummy ;


 scalar_t__ match_func_rec (int *,int const*,long,char*,int) ;

__attribute__((used)) static int is_func_rec(xdfile_t *xdf, xdemitconf_t const *xecfg, long ri)
{
 char dummy[1];
 return match_func_rec(xdf, xecfg, ri, dummy, sizeof(dummy)) >= 0;
}
