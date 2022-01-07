
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
struct refspec_item {char* dst; int src; } ;
struct ref {scalar_t__ status; int new_oid; scalar_t__ deletion; int name; } ;


 scalar_t__ REF_STATUS_OK ;
 scalar_t__ REF_STATUS_UPTODATE ;
 int delete_ref (int *,char*,int *,int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int remote_find_tracking (struct remote*,struct refspec_item*) ;
 int stderr ;
 int update_ref (char*,char*,int *,int *,int ,int ) ;

void transport_update_tracking_ref(struct remote *remote, struct ref *ref, int verbose)
{
 struct refspec_item rs;

 if (ref->status != REF_STATUS_OK && ref->status != REF_STATUS_UPTODATE)
  return;

 rs.src = ref->name;
 rs.dst = ((void*)0);

 if (!remote_find_tracking(remote, &rs)) {
  if (verbose)
   fprintf(stderr, "updating local tracking ref '%s'\n", rs.dst);
  if (ref->deletion) {
   delete_ref(((void*)0), rs.dst, ((void*)0), 0);
  } else
   update_ref("update by push", rs.dst, &ref->new_oid,
       ((void*)0), 0, 0);
  free(rs.dst);
 }
}
