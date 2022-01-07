
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int symbolic; } ;
struct TYPE_11__ {TYPE_2__ target; TYPE_1__* db; int name; } ;
typedef TYPE_3__ git_reference ;
struct TYPE_9__ {int repo; } ;


 int GIT_ERROR_REFERENCE ;


 int git_error_set (int ,char*) ;
 int git_reference_lookup (TYPE_3__**,int ,int ) ;
 int git_reference_lookup_resolved (TYPE_3__**,int ,int ,int) ;
 int git_reference_type (TYPE_3__ const*) ;

int git_reference_resolve(git_reference **ref_out, const git_reference *ref)
{
 switch (git_reference_type(ref)) {
 case 129:
  return git_reference_lookup(ref_out, ref->db->repo, ref->name);

 case 128:
  return git_reference_lookup_resolved(ref_out, ref->db->repo, ref->target.symbolic, -1);

 default:
  git_error_set(GIT_ERROR_REFERENCE, "invalid reference");
  return -1;
 }
}
