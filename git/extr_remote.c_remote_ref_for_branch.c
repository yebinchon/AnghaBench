
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr; } ;
struct remote {TYPE_1__ push; } ;
struct branch {char const** merge_name; int refname; scalar_t__ merge_nr; } ;


 char* apply_refspecs (TYPE_1__*,int ) ;
 char* pushremote_for_branch (struct branch*,int *) ;
 struct remote* remote_get (char const*) ;

const char *remote_ref_for_branch(struct branch *branch, int for_push,
      int *explicit)
{
 if (branch) {
  if (!for_push) {
   if (branch->merge_nr) {
    if (explicit)
     *explicit = 1;
    return branch->merge_name[0];
   }
  } else {
   const char *dst, *remote_name =
    pushremote_for_branch(branch, ((void*)0));
   struct remote *remote = remote_get(remote_name);

   if (remote && remote->push.nr &&
       (dst = apply_refspecs(&remote->push,
        branch->refname))) {
    if (explicit)
     *explicit = 1;
    return dst;
   }
  }
 }
 if (explicit)
  *explicit = 0;
 return "";
}
