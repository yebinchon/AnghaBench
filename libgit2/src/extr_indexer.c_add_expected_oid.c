
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {int expected_oids; TYPE_1__* pack; int odb; } ;
typedef TYPE_2__ git_indexer ;
struct TYPE_4__ {int idx_cache; } ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int * git__malloc (int) ;
 int git_odb_exists (int ,int const*) ;
 int git_oid_cpy (int *,int const*) ;
 int git_oidmap_exists (int ,int const*) ;
 int git_oidmap_set (int ,int *,int *) ;

__attribute__((used)) static int add_expected_oid(git_indexer *idx, const git_oid *oid)
{





 if ((!idx->odb || !git_odb_exists(idx->odb, oid)) &&
     !git_oidmap_exists(idx->pack->idx_cache, oid) &&
     !git_oidmap_exists(idx->expected_oids, oid)) {
      git_oid *dup = git__malloc(sizeof(*oid));
      GIT_ERROR_CHECK_ALLOC(dup);
      git_oid_cpy(dup, oid);
      return git_oidmap_set(idx->expected_oids, dup, dup);
 }

 return 0;
}
