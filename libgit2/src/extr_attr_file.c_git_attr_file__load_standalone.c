
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_11__ {int pool; int entry; } ;
typedef TYPE_2__ git_attr_file ;


 int GIT_ATTR_FILE__FROM_FILE ;
 TYPE_1__ GIT_BUF_INIT ;
 int git_attr_cache__alloc_file_entry (int *,int *,char const*,int *) ;
 int git_attr_file__free (TYPE_2__*) ;
 int git_attr_file__new (TYPE_2__**,int *,int ) ;
 int git_attr_file__parse_buffer (int *,TYPE_2__*,int ,int) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,char const*) ;

int git_attr_file__load_standalone(git_attr_file **out, const char *path)
{
 git_buf content = GIT_BUF_INIT;
 git_attr_file *file = ((void*)0);
 int error;

 if ((error = git_futils_readbuffer(&content, path)) < 0)
  goto out;






 if ((error = git_attr_file__new(&file, ((void*)0), GIT_ATTR_FILE__FROM_FILE)) < 0 ||
     (error = git_attr_file__parse_buffer(((void*)0), file, content.ptr, 1)) < 0 ||
     (error = git_attr_cache__alloc_file_entry(&file->entry, ((void*)0), path, &file->pool)) < 0)
  goto out;

 *out = file;
out:
 if (error < 0)
  git_attr_file__free(file);
 git_buf_dispose(&content);

 return error;
}
