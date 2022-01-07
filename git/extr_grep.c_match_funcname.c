
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* find_func ) (char*,int,char*,int,int ) ;int find_func_priv; } ;
typedef TYPE_3__ xdemitconf_t ;
struct userdiff_funcname {int cflags; scalar_t__ pattern; } ;
struct grep_source {TYPE_2__* driver; } ;
struct grep_opt {TYPE_3__* priv; TYPE_1__* repo; } ;
struct TYPE_6__ {struct userdiff_funcname funcname; } ;
struct TYPE_5__ {int index; } ;


 int grep_source_load_driver (struct grep_source*,int ) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ stub1 (char*,int,char*,int,int ) ;
 int xdiff_set_find_func (TYPE_3__*,scalar_t__,int ) ;

__attribute__((used)) static int match_funcname(struct grep_opt *opt, struct grep_source *gs, char *bol, char *eol)
{
 xdemitconf_t *xecfg = opt->priv;
 if (xecfg && !xecfg->find_func) {
  grep_source_load_driver(gs, opt->repo->index);
  if (gs->driver->funcname.pattern) {
   const struct userdiff_funcname *pe = &gs->driver->funcname;
   xdiff_set_find_func(xecfg, pe->pattern, pe->cflags);
  } else {
   xecfg = opt->priv = ((void*)0);
  }
 }

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
