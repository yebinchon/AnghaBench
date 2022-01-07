
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_graft {int nr_parent; int oid; } ;
struct TYPE_2__ {scalar_t__ parsed; } ;
struct commit {int * parents; TYPE_1__ object; } ;


 struct commit* lookup_commit (int ,struct object_id const*) ;
 int oidcpy (int *,struct object_id const*) ;
 int register_commit_graft (struct repository*,struct commit_graft*,int ) ;
 int the_repository ;
 struct commit_graft* xmalloc (int) ;

int register_shallow(struct repository *r, const struct object_id *oid)
{
 struct commit_graft *graft =
  xmalloc(sizeof(struct commit_graft));
 struct commit *commit = lookup_commit(the_repository, oid);

 oidcpy(&graft->oid, oid);
 graft->nr_parent = -1;
 if (commit && commit->object.parsed)
  commit->parents = ((void*)0);
 return register_commit_graft(r, graft, 0);
}
