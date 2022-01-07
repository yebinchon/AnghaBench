
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb ;


 int GIT_EAMBIGUOUS ;
 size_t GIT_OID_HEXSZ ;
 int git_odb_exists_prefix (int *,int *,int const*,size_t) ;
 int git_repository_odb__weakptr (int **,int *) ;

__attribute__((used)) static int find_unique_abbrev_size(
 int *out,
 git_repository *repo,
 const git_oid *oid_in,
 unsigned int abbreviated_size)
{
 size_t size = abbreviated_size;
 git_odb *odb;
 git_oid dummy;
 int error;

 if ((error = git_repository_odb__weakptr(&odb, repo)) < 0)
  return error;

 while (size < GIT_OID_HEXSZ) {
  if ((error = git_odb_exists_prefix(&dummy, odb, oid_in, size)) == 0) {
   *out = (int) size;
   return 0;
  }


  if (error != GIT_EAMBIGUOUS)
   return error;


  size++;
 }


 *out = GIT_OID_HEXSZ;

 return 0;
}
