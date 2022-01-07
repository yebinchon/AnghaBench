
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_commit ;


 scalar_t__ git_commit_lookup (int **,int *,int *) ;
 int git_reference_name_to_id (int *,int *,char*) ;
 int normalize_namespace (char**,int *,char const*) ;

__attribute__((used)) static int retrieve_note_commit(
 git_commit **commit_out,
 char **notes_ref_out,
 git_repository *repo,
 const char *notes_ref)
{
 int error;
 git_oid oid;

 if ((error = normalize_namespace(notes_ref_out, repo, notes_ref)) < 0)
  return error;

 if ((error = git_reference_name_to_id(&oid, repo, *notes_ref_out)) < 0)
  return error;

 if (git_commit_lookup(commit_out, repo, &oid) < 0)
  return error;

 return 0;
}
