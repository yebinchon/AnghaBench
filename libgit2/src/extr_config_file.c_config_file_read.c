
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_repository ;
typedef int git_config_level_t ;
typedef int git_config_entries ;
struct TYPE_8__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {int checksum; int stamp; int path; } ;
typedef TYPE_2__ config_file ;


 TYPE_1__ GIT_BUF_INIT ;
 int config_file_read_buffer (int *,int const*,TYPE_2__*,int ,int,int ,int ) ;
 int errno ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_filestamp_set_from_stat (int *,struct stat*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 int git_hash_buf (int *,int ,int ) ;
 int git_path_set_error (int ,int ,char*) ;
 scalar_t__ p_stat (int ,struct stat*) ;

__attribute__((used)) static int config_file_read(
 git_config_entries *entries,
 const git_repository *repo,
 config_file *file,
 git_config_level_t level,
 int depth)
{
 git_buf contents = GIT_BUF_INIT;
 struct stat st;
 int error;

 if (p_stat(file->path, &st) < 0) {
  error = git_path_set_error(errno, file->path, "stat");
  goto out;
 }

 if ((error = git_futils_readbuffer(&contents, file->path)) < 0)
  goto out;

 git_futils_filestamp_set_from_stat(&file->stamp, &st);
 if ((error = git_hash_buf(&file->checksum, contents.ptr, contents.size)) < 0)
  goto out;

 if ((error = config_file_read_buffer(entries, repo, file, level, depth,
          contents.ptr, contents.size)) < 0)
  goto out;

out:
 git_buf_dispose(&contents);
 return error;
}
