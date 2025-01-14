
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint32_t ;
struct TYPE_18__ {int * ptr; int len; int automergeable; int member_0; } ;
typedef TYPE_1__ git_merge_file_result ;
struct TYPE_19__ {int flags; scalar_t__ favor; } ;
typedef TYPE_2__ git_merge_file_options ;
struct TYPE_20__ {TYPE_11__* theirs; TYPE_10__* ours; TYPE_9__* ancestor; int repo; int file_opts; } ;
typedef TYPE_3__ git_merge_driver_source ;
struct TYPE_21__ {scalar_t__ favor; } ;
typedef TYPE_4__ git_merge_driver__builtin ;
typedef int git_merge_driver ;
struct TYPE_22__ {char* ptr; int asize; int size; } ;
typedef TYPE_5__ git_buf ;
struct TYPE_23__ {int mode; int * path; } ;
struct TYPE_17__ {int mode; int * path; } ;
struct TYPE_16__ {int mode; int * path; } ;


 int GIT_EMERGECONFLICT ;
 int GIT_MERGE_FILE_FAVOR__CONFLICTED ;
 TYPE_2__ GIT_MERGE_FILE_OPTIONS_INIT ;
 int GIT_UNUSED (char const*) ;
 int git_merge_file__best_mode (int ,int ,int ) ;
 char* git_merge_file__best_path (int *,int *,int *) ;
 int git_merge_file_from_index (TYPE_1__*,int ,TYPE_9__*,TYPE_10__*,TYPE_11__*,TYPE_2__*) ;
 int git_merge_file_result_free (TYPE_1__*) ;
 int memcpy (TYPE_2__*,int ,int) ;

int git_merge_driver__builtin_apply(
 git_merge_driver *self,
 const char **path_out,
 uint32_t *mode_out,
 git_buf *merged_out,
 const char *filter_name,
 const git_merge_driver_source *src)
{
 git_merge_driver__builtin *driver = (git_merge_driver__builtin *)self;
 git_merge_file_options file_opts = GIT_MERGE_FILE_OPTIONS_INIT;
 git_merge_file_result result = {0};
 int error;

 GIT_UNUSED(filter_name);

 if (src->file_opts)
  memcpy(&file_opts, src->file_opts, sizeof(git_merge_file_options));

 if (driver->favor)
  file_opts.favor = driver->favor;

 if ((error = git_merge_file_from_index(&result, src->repo,
  src->ancestor, src->ours, src->theirs, &file_opts)) < 0)
  goto done;

 if (!result.automergeable &&
  !(file_opts.flags & GIT_MERGE_FILE_FAVOR__CONFLICTED)) {
  error = GIT_EMERGECONFLICT;
  goto done;
 }

 *path_out = git_merge_file__best_path(
  src->ancestor ? src->ancestor->path : ((void*)0),
  src->ours ? src->ours->path : ((void*)0),
  src->theirs ? src->theirs->path : ((void*)0));

 *mode_out = git_merge_file__best_mode(
  src->ancestor ? src->ancestor->mode : 0,
  src->ours ? src->ours->mode : 0,
  src->theirs ? src->theirs->mode : 0);

 merged_out->ptr = (char *)result.ptr;
 merged_out->size = result.len;
 merged_out->asize = result.len;
 result.ptr = ((void*)0);

done:
 git_merge_file_result_free(&result);
 return error;
}
