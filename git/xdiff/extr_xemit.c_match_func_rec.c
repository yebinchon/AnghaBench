
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdfile_t ;
struct TYPE_3__ {long (* find_func ) (char const*,long,char*,long,int ) ;int find_func_priv; } ;
typedef TYPE_1__ xdemitconf_t ;


 long def_ff (char const*,long,char*,long,int ) ;
 long stub1 (char const*,long,char*,long,int ) ;
 long xdl_get_rec (int *,long,char const**) ;

__attribute__((used)) static long match_func_rec(xdfile_t *xdf, xdemitconf_t const *xecfg, long ri,
      char *buf, long sz)
{
 const char *rec;
 long len = xdl_get_rec(xdf, ri, &rec);
 if (!xecfg->find_func)
  return def_ff(rec, len, buf, sz, xecfg->find_func_priv);
 return xecfg->find_func(rec, len, buf, sz, xecfg->find_func_priv);
}
