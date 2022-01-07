
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref {int status; int forced_update; int old_oid; int new_oid; int name; scalar_t__ deletion; int old_oid_expect; scalar_t__ expect_old_sha1; TYPE_1__* peer_ref; scalar_t__ force; struct ref* next; } ;
struct TYPE_2__ {int new_oid; } ;


 int REF_STATUS_REJECT_ALREADY_EXISTS ;
 int REF_STATUS_REJECT_FETCH_FIRST ;
 int REF_STATUS_REJECT_NEEDS_FORCE ;
 int REF_STATUS_REJECT_NONFASTFORWARD ;
 int REF_STATUS_REJECT_STALE ;
 int REF_STATUS_UPTODATE ;
 int has_object_file (int *) ;
 scalar_t__ is_null_oid (int *) ;
 int lookup_commit_reference_gently (int ,int *,int) ;
 int oidcpy (int *,int *) ;
 scalar_t__ oideq (int *,int *) ;
 int ref_newer (int *,int *) ;
 scalar_t__ starts_with (int ,char*) ;
 int the_repository ;

void set_ref_status_for_push(struct ref *remote_refs, int send_mirror,
        int force_update)
{
 struct ref *ref;

 for (ref = remote_refs; ref; ref = ref->next) {
  int force_ref_update = ref->force || force_update;
  int reject_reason = 0;

  if (ref->peer_ref)
   oidcpy(&ref->new_oid, &ref->peer_ref->new_oid);
  else if (!send_mirror)
   continue;

  ref->deletion = is_null_oid(&ref->new_oid);
  if (!ref->deletion &&
   oideq(&ref->old_oid, &ref->new_oid)) {
   ref->status = REF_STATUS_UPTODATE;
   continue;
  }
  if (ref->expect_old_sha1) {
   if (!oideq(&ref->old_oid, &ref->old_oid_expect))
    reject_reason = REF_STATUS_REJECT_STALE;
   else

    force_ref_update = 1;
  }
  if (!reject_reason && !ref->deletion && !is_null_oid(&ref->old_oid)) {
   if (starts_with(ref->name, "refs/tags/"))
    reject_reason = REF_STATUS_REJECT_ALREADY_EXISTS;
   else if (!has_object_file(&ref->old_oid))
    reject_reason = REF_STATUS_REJECT_FETCH_FIRST;
   else if (!lookup_commit_reference_gently(the_repository, &ref->old_oid, 1) ||
     !lookup_commit_reference_gently(the_repository, &ref->new_oid, 1))
    reject_reason = REF_STATUS_REJECT_NEEDS_FORCE;
   else if (!ref_newer(&ref->new_oid, &ref->old_oid))
    reject_reason = REF_STATUS_REJECT_NONFASTFORWARD;
  }





  if (!force_ref_update)
   ref->status = reject_reason;
  else if (reject_reason)
   ref->forced_update = 1;
 }
}
