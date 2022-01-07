
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t filename_len; int filename; } ;
typedef TYPE_1__ remove_data ;
struct TYPE_8__ {char* ptr; size_t size; } ;
typedef TYPE_2__ git_buf ;


 int git_path_direach (TYPE_2__*,int ,int (*) (void*,TYPE_2__*),TYPE_1__*) ;
 int git_path_isdir (char*) ;
 int p_unlink (char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int remove_placeholders_recurs(void *_data, git_buf *path)
{
 remove_data *data = (remove_data *)_data;
 size_t pathlen;

 if (git_path_isdir(path->ptr) == 1)
  return git_path_direach(path, 0, remove_placeholders_recurs, data);

 pathlen = path->size;

 if (pathlen < data->filename_len)
  return 0;


 if (!strcmp(data->filename, path->ptr + pathlen - data->filename_len) &&
  (pathlen == data->filename_len ||
   path->ptr[pathlen - data->filename_len - 1] == '/'))
  return p_unlink(path->ptr);

 return 0;
}
