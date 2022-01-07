
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct remote {int name; int fetch; } ;


 int _ (char*) ;
 char* apply_refspecs (int *,char const*) ;
 char const* error_buf (struct strbuf*,int ,char const*,int ) ;

__attribute__((used)) static const char *tracking_for_push_dest(struct remote *remote,
       const char *refname,
       struct strbuf *err)
{
 char *ret;

 ret = apply_refspecs(&remote->fetch, refname);
 if (!ret)
  return error_buf(err,
     _("push destination '%s' on remote '%s' has no local tracking branch"),
     refname, remote->name);
 return ret;
}
