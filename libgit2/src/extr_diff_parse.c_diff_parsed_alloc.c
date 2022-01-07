
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {int deltas; int pool; TYPE_2__ opts; int free_fn; int patch_fn; int entrycomp; int pfxcomp; int strncomp; int strcomp; int type; } ;
struct TYPE_8__ {TYPE_3__ base; int patches; } ;
typedef TYPE_1__ git_diff_parsed ;


 int GIT_DIFF_IGNORE_CASE ;
 int GIT_DIFF_OPTIONS_VERSION ;
 int GIT_DIFF_TYPE_PARSED ;
 int GIT_REFCOUNT_INC (TYPE_3__*) ;
 int diff_parsed_free ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git__prefixcmp ;
 int git__strcmp ;
 int git__strncmp ;
 int git_diff__entry_cmp ;
 int * git_diff_delta__cmp ;
 int git_diff_free (TYPE_3__*) ;
 scalar_t__ git_diff_options_init (TYPE_2__*,int ) ;
 int git_patch_parsed_from_diff ;
 int git_pool_init (int *,int) ;
 scalar_t__ git_vector_init (int *,int ,int *) ;
 int git_vector_set_cmp (int *,int *) ;

__attribute__((used)) static git_diff_parsed *diff_parsed_alloc(void)
{
 git_diff_parsed *diff;

 if ((diff = git__calloc(1, sizeof(git_diff_parsed))) == ((void*)0))
  return ((void*)0);

 GIT_REFCOUNT_INC(&diff->base);
 diff->base.type = GIT_DIFF_TYPE_PARSED;
 diff->base.strcomp = git__strcmp;
 diff->base.strncomp = git__strncmp;
 diff->base.pfxcomp = git__prefixcmp;
 diff->base.entrycomp = git_diff__entry_cmp;
 diff->base.patch_fn = git_patch_parsed_from_diff;
 diff->base.free_fn = diff_parsed_free;

 if (git_diff_options_init(&diff->base.opts, GIT_DIFF_OPTIONS_VERSION) < 0) {
  git__free(diff);
  return ((void*)0);
 }

 diff->base.opts.flags &= ~GIT_DIFF_IGNORE_CASE;

 git_pool_init(&diff->base.pool, 1);

 if (git_vector_init(&diff->patches, 0, ((void*)0)) < 0 ||
  git_vector_init(&diff->base.deltas, 0, git_diff_delta__cmp) < 0) {
  git_diff_free(&diff->base);
  return ((void*)0);
 }

 git_vector_set_cmp(&diff->base.deltas, git_diff_delta__cmp);

 return diff;
}
