
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_10__ {scalar_t__ depth; int level; int repo; int entries; TYPE_1__* file; } ;
typedef TYPE_2__ config_file_parse_data ;
struct TYPE_11__ {void* path; int includes; } ;
typedef TYPE_3__ config_file ;
struct TYPE_9__ {int includes; int path; } ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int config_file_read (int ,int ,TYPE_3__*,int ,scalar_t__) ;
 int git__free (char*) ;
 TYPE_3__* git_array_alloc (int ) ;
 int git_array_init (int ) ;
 void* git_buf_detach (int *) ;
 int git_error_clear () ;
 int git_path_dirname_r (int *,int ) ;
 int included_path (int *,char*,char const*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int parse_include(config_file_parse_data *parse_data, const char *file)
{
 config_file *include;
 git_buf path = GIT_BUF_INIT;
 char *dir;
 int result;

 if (!file)
  return 0;

 if ((result = git_path_dirname_r(&path, parse_data->file->path)) < 0)
  return result;

 dir = git_buf_detach(&path);
 result = included_path(&path, dir, file);
 git__free(dir);

 if (result < 0)
  return result;

 include = git_array_alloc(parse_data->file->includes);
 GIT_ERROR_CHECK_ALLOC(include);
 memset(include, 0, sizeof(*include));
 git_array_init(include->includes);
 include->path = git_buf_detach(&path);

 result = config_file_read(parse_data->entries, parse_data->repo, include,
      parse_data->level, parse_data->depth+1);

 if (result == GIT_ENOTFOUND) {
  git_error_clear();
  result = 0;
 }

 return result;
}
