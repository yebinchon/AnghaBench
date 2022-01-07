
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sg_buf ;
typedef int git_commit ;
struct TYPE_23__ {struct TYPE_23__* previous; scalar_t__ blob; int * commit; } ;
typedef TYPE_2__ git_blame__origin ;
struct TYPE_22__ {int oldest_commit; } ;
struct TYPE_24__ {TYPE_1__ options; } ;
typedef TYPE_3__ git_blame ;


 scalar_t__ ARRAY_SIZE (TYPE_2__**) ;
 int GIT_BLAME_FIRST_PARENT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__**) ;
 TYPE_2__* find_origin (TYPE_3__*,int *,TYPE_2__*) ;
 TYPE_2__** git__calloc (int,int) ;
 int git__free (TYPE_2__**) ;
 int * git_blob_id (scalar_t__) ;
 int git_commit_free (int *) ;
 int * git_commit_id (int *) ;
 int git_commit_parent (int **,int *,int) ;
 int git_commit_parentcount (int *) ;
 int git_oid_cmp (int *,int *) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_2__**,int ,int) ;
 int origin_decref (TYPE_2__*) ;
 int origin_incref (TYPE_2__*) ;
 int pass_blame_to_parent (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int pass_whole_blame (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int pass_blame(git_blame *blame, git_blame__origin *origin, uint32_t opt)
{
 git_commit *commit = origin->commit;
 int i, num_parents;
 git_blame__origin *sg_buf[16];
 git_blame__origin *porigin, **sg_origin = sg_buf;
 int ret, error = 0;

 num_parents = git_commit_parentcount(commit);
 if (!git_oid_cmp(git_commit_id(commit), &blame->options.oldest_commit))

  num_parents = 0;
 else if (opt & GIT_BLAME_FIRST_PARENT && num_parents > 1)

  num_parents = 1;

 if (!num_parents) {
  git_oid_cpy(&blame->options.oldest_commit, git_commit_id(commit));
  goto finish;
 } else if (num_parents < (int)ARRAY_SIZE(sg_buf))
  memset(sg_buf, 0, sizeof(sg_buf));
 else {
  sg_origin = git__calloc(num_parents, sizeof(*sg_origin));
  GIT_ERROR_CHECK_ALLOC(sg_origin);
 }

 for (i=0; i<num_parents; i++) {
  git_commit *p;
  int j, same;

  if (sg_origin[i])
   continue;

  if ((error = git_commit_parent(&p, origin->commit, i)) < 0)
   goto finish;
  porigin = find_origin(blame, p, origin);

  if (!porigin) {






   git_commit_free(p);
   continue;
  }
  if (porigin->blob && origin->blob &&
      !git_oid_cmp(git_blob_id(porigin->blob), git_blob_id(origin->blob))) {
   error = pass_whole_blame(blame, origin, porigin);
   origin_decref(porigin);
   goto finish;
  }
  for (j = same = 0; j<i; j++)
   if (sg_origin[j] &&
     !git_oid_cmp(git_blob_id(sg_origin[j]->blob), git_blob_id(porigin->blob))) {
    same = 1;
    break;
   }
  if (!same)
   sg_origin[i] = porigin;
  else
   origin_decref(porigin);
 }


 for (i=0; i<num_parents; i++) {
  git_blame__origin *porigin = sg_origin[i];
  if (!porigin)
   continue;
  if (!origin->previous) {
   origin_incref(porigin);
   origin->previous = porigin;
  }

  if ((ret = pass_blame_to_parent(blame, origin, porigin)) != 0) {
   if (ret < 0)
    error = -1;

   goto finish;
  }
 }





finish:
 for (i=0; i<num_parents; i++)
  if (sg_origin[i])
   origin_decref(sg_origin[i]);
 if (sg_origin != sg_buf)
  git__free(sg_origin);
 return error;
}
