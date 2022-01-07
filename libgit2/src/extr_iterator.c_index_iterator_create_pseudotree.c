
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int path; int mode; } ;
struct TYPE_11__ {int ptr; } ;
struct TYPE_9__ {TYPE_3__ tree_entry; TYPE_6__ tree_buf; TYPE_1__* entry; } ;
typedef TYPE_2__ index_iterator ;
typedef TYPE_3__ git_index_entry ;
struct TYPE_8__ {char* path; } ;


 int GIT_FILEMODE_TREE ;
 int git_buf_clear (TYPE_6__*) ;
 int git_buf_put (TYPE_6__*,char const*,int) ;
 size_t git_path_common_dirlen (char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool index_iterator_create_pseudotree(
 const git_index_entry **out,
 index_iterator *iter,
 const char *path)
{
 const char *prev_path, *relative_path, *dirsep;
 size_t common_len;

 prev_path = iter->entry ? iter->entry->path : "";


 common_len = git_path_common_dirlen(prev_path, path);
 relative_path = path + common_len;

 if ((dirsep = strchr(relative_path, '/')) == ((void*)0))
  return 0;

 git_buf_clear(&iter->tree_buf);
 git_buf_put(&iter->tree_buf, path, (dirsep - path) + 1);

 iter->tree_entry.mode = GIT_FILEMODE_TREE;
 iter->tree_entry.path = iter->tree_buf.ptr;

 *out = &iter->tree_entry;
 return 1;
}
