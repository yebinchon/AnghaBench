
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;
struct remote {scalar_t__ mirror; int name; TYPE_1__ push; } ;
struct branch {char* refname; int name; } ;


 int BUG (char*) ;






 int _ (char*) ;
 char* apply_refspecs (TYPE_1__*,char*) ;
 char const* branch_get_upstream (struct branch*,struct strbuf*) ;
 char const* error_buf (struct strbuf*,int ,...) ;
 int free (char*) ;
 int push_default ;
 int pushremote_for_branch (struct branch*,int *) ;
 struct remote* remote_get (int ) ;
 int strcmp (char const*,char const*) ;
 char const* tracking_for_push_dest (struct remote*,char*,struct strbuf*) ;

__attribute__((used)) static const char *branch_get_push_1(struct branch *branch, struct strbuf *err)
{
 struct remote *remote;

 remote = remote_get(pushremote_for_branch(branch, ((void*)0)));
 if (!remote)
  return error_buf(err,
     _("branch '%s' has no remote for pushing"),
     branch->name);

 if (remote->push.nr) {
  char *dst;
  const char *ret;

  dst = apply_refspecs(&remote->push, branch->refname);
  if (!dst)
   return error_buf(err,
      _("push refspecs for '%s' do not include '%s'"),
      remote->name, branch->name);

  ret = tracking_for_push_dest(remote, dst, err);
  free(dst);
  return ret;
 }

 if (remote->mirror)
  return tracking_for_push_dest(remote, branch->refname, err);

 switch (push_default) {
 case 131:
  return error_buf(err, _("push has no destination (push.default is 'nothing')"));

 case 132:
 case 133:
  return tracking_for_push_dest(remote, branch->refname, err);

 case 128:
  return branch_get_upstream(branch, err);

 case 129:
 case 130:
  {
   const char *up, *cur;

   up = branch_get_upstream(branch, err);
   if (!up)
    return ((void*)0);
   cur = tracking_for_push_dest(remote, branch->refname, err);
   if (!cur)
    return ((void*)0);
   if (strcmp(cur, up))
    return error_buf(err,
       _("cannot resolve 'simple' push to a single destination"));
   return cur;
  }
 }

 BUG("unhandled push situation");
}
