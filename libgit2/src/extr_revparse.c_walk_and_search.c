
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_regexp ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;


 int GIT_ENOTFOUND ;
 int GIT_ITEROVER ;
 int GIT_OBJECT_COMMIT ;
 int git_commit_message (int *) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_regexp_match (int *,int ) ;
 int git_revwalk_next (int *,int *) ;
 int git_revwalk_repository (int *) ;

__attribute__((used)) static int walk_and_search(git_object **out, git_revwalk *walk, git_regexp *regex)
{
 int error;
 git_oid oid;
 git_object *obj;

 while (!(error = git_revwalk_next(&oid, walk))) {

  error = git_object_lookup(&obj, git_revwalk_repository(walk), &oid, GIT_OBJECT_COMMIT);
  if ((error < 0) && (error != GIT_ENOTFOUND))
   return -1;

  if (!git_regexp_match(regex, git_commit_message((git_commit*)obj))) {
   *out = obj;
   return 0;
  }

  git_object_free(obj);
 }

 if (error < 0 && error == GIT_ITEROVER)
  error = GIT_ENOTFOUND;

 return error;
}
