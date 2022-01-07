
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_repository ;
typedef int git_oid ;


 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_tag_lookup (int **,int *,int *) ;

__attribute__((used)) static void retrieve_tag_from_oid(git_tag **tag_out, git_repository *repo, const char *sha)
{
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, sha));
 cl_git_pass(git_tag_lookup(tag_out, repo, &oid));
}
