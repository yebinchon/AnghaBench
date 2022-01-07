
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef TYPE_2__ git_reference ;
struct TYPE_5__ {int * repo; } ;


 int assert (TYPE_2__ const*) ;

git_repository *git_reference_owner(const git_reference *ref)
{
 assert(ref);
 return ref->db->repo;
}
