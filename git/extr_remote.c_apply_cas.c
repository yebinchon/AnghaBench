
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
struct ref {int expect_old_sha1; int old_oid_expect; int name; } ;
struct push_cas_option {int nr; int use_tracking_for_rest; struct push_cas* entry; } ;
struct push_cas {int expect; int use_tracking; int refname; } ;


 int oidclr (int *) ;
 int oidcpy (int *,int *) ;
 int refname_match (int ,int ) ;
 scalar_t__ remote_tracking (struct remote*,int ,int *) ;

__attribute__((used)) static void apply_cas(struct push_cas_option *cas,
        struct remote *remote,
        struct ref *ref)
{
 int i;


 for (i = 0; i < cas->nr; i++) {
  struct push_cas *entry = &cas->entry[i];
  if (!refname_match(entry->refname, ref->name))
   continue;
  ref->expect_old_sha1 = 1;
  if (!entry->use_tracking)
   oidcpy(&ref->old_oid_expect, &entry->expect);
  else if (remote_tracking(remote, ref->name, &ref->old_oid_expect))
   oidclr(&ref->old_oid_expect);
  return;
 }


 if (!cas->use_tracking_for_rest)
  return;

 ref->expect_old_sha1 = 1;
 if (remote_tracking(remote, ref->name, &ref->old_oid_expect))
  oidclr(&ref->old_oid_expect);
}
