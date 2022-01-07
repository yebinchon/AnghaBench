
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct branch {TYPE_1__** merge; int name; int refname; } ;
struct TYPE_2__ {char const* dst; int src; } ;


 int _ (char*) ;
 char const* error_buf (struct strbuf*,int ,...) ;
 int ref_exists (int ) ;

const char *branch_get_upstream(struct branch *branch, struct strbuf *err)
{
 if (!branch)
  return error_buf(err, _("HEAD does not point to a branch"));

 if (!branch->merge || !branch->merge[0]) {





  if (!ref_exists(branch->refname))
   return error_buf(err, _("no such branch: '%s'"),
      branch->name);
  return error_buf(err,
     _("no upstream configured for branch '%s'"),
     branch->name);
 }

 if (!branch->merge[0]->dst)
  return error_buf(err,
     _("upstream branch '%s' not stored as a remote-tracking branch"),
     branch->merge[0]->src);

 return branch->merge[0]->dst;
}
