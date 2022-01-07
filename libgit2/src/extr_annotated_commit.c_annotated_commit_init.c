
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_commit ;
struct TYPE_6__ {char* id_str; struct TYPE_6__* description; int commit; int type; } ;
typedef TYPE_1__ git_annotated_commit ;


 int GIT_ANNOTATED_COMMIT_REAL ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 size_t GIT_OID_HEXSZ ;
 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;
 TYPE_1__* git__strdup (char const*) ;
 int git_commit_dup (int *,int *) ;
 int git_commit_id (int *) ;
 int git_oid_fmt (char*,int ) ;

__attribute__((used)) static int annotated_commit_init(
 git_annotated_commit **out,
 git_commit *commit,
 const char *description)
{
 git_annotated_commit *annotated_commit;
 int error = 0;

 assert(out && commit);

 *out = ((void*)0);

 annotated_commit = git__calloc(1, sizeof(git_annotated_commit));
 GIT_ERROR_CHECK_ALLOC(annotated_commit);

 annotated_commit->type = GIT_ANNOTATED_COMMIT_REAL;

 if ((error = git_commit_dup(&annotated_commit->commit, commit)) < 0)
  goto done;

 git_oid_fmt(annotated_commit->id_str, git_commit_id(commit));
 annotated_commit->id_str[GIT_OID_HEXSZ] = '\0';

 if (!description)
  description = annotated_commit->id_str;

 annotated_commit->description = git__strdup(description);
 GIT_ERROR_CHECK_ALLOC(annotated_commit->description);

done:
 if (!error)
  *out = annotated_commit;

 return error;
}
