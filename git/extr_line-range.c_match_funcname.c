
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* find_func ) (char const*,int,char*,int,int ) ;int find_func_priv; } ;
typedef TYPE_1__ xdemitconf_t ;


 scalar_t__ isalpha (char const) ;
 scalar_t__ stub1 (char const*,int,char*,int,int ) ;

__attribute__((used)) static int match_funcname(xdemitconf_t *xecfg, const char *bol, const char *eol)
{
 if (xecfg) {
  char buf[1];
  return xecfg->find_func(bol, eol - bol, buf, 1,
     xecfg->find_func_priv) >= 0;
 }

 if (bol == eol)
  return 0;
 if (isalpha(*bol) || *bol == '_' || *bol == '$')
  return 1;
 return 0;
}
