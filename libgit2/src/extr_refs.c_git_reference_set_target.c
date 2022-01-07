
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_9__ {int oid; } ;
struct TYPE_10__ {TYPE_2__ target; int name; TYPE_1__* db; } ;
typedef TYPE_3__ git_reference ;
typedef int git_oid ;
struct TYPE_8__ {int * repo; } ;


 int assert (int ) ;
 int ensure_is_an_updatable_direct_reference (TYPE_3__*) ;
 int git_reference_create_matching (TYPE_3__**,int *,int ,int const*,int,int *,char const*) ;

int git_reference_set_target(
 git_reference **out,
 git_reference *ref,
 const git_oid *id,
 const char *log_message)
{
 int error;
 git_repository *repo;

 assert(out && ref && id);

 repo = ref->db->repo;

 if ((error = ensure_is_an_updatable_direct_reference(ref)) < 0)
  return error;

 return git_reference_create_matching(out, repo, ref->name, id, 1, &ref->target.oid, log_message);
}
