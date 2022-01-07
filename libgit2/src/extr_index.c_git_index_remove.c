
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {char const* path; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;


 int DELETE_IN_MAP (int *,TYPE_2__*) ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_INDEX ;
 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_2__*,int) ;
 int git_error_set (int ,char*,char const*,int) ;
 scalar_t__ index_find (size_t*,int *,char const*,int ,int) ;
 int index_remove_entry (int *,size_t) ;

int git_index_remove(git_index *index, const char *path, int stage)
{
 int error;
 size_t position;
 git_index_entry remove_key = {{ 0 }};

 remove_key.path = path;
 GIT_INDEX_ENTRY_STAGE_SET(&remove_key, stage);

 DELETE_IN_MAP(index, &remove_key);

 if (index_find(&position, index, path, 0, stage) < 0) {
  git_error_set(
   GIT_ERROR_INDEX, "index does not contain %s at stage %d", path, stage);
  error = GIT_ENOTFOUND;
 } else {
  error = index_remove_entry(index, position);
 }

 return error;
}
