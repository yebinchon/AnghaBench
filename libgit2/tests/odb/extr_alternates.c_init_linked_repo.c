
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;


 int GIT_MKDIR_PATH ;
 int cl_git_pass (int ) ;
 TYPE_1__ destpath ;
 int file ;
 TYPE_1__ filepath ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int) ;
 int git_filebuf_printf (int *,char*,int ) ;
 int git_futils_mkdir (int ,int,int ) ;
 int git_path_prettify (TYPE_1__*,char const*,int *) ;
 int git_repository_free (int ) ;
 int git_repository_init (int *,char const*,int) ;
 int git_repository_path (int ) ;
 int repo ;

__attribute__((used)) static void init_linked_repo(const char *path, const char *alternate)
{
 git_buf_clear(&destpath);
 git_buf_clear(&filepath);

 cl_git_pass(git_repository_init(&repo, path, 1));
 cl_git_pass(git_path_prettify(&destpath, alternate, ((void*)0)));
 cl_git_pass(git_buf_joinpath(&destpath, destpath.ptr, "objects"));
 cl_git_pass(git_buf_joinpath(&filepath, git_repository_path(repo), "objects/info"));
 cl_git_pass(git_futils_mkdir(filepath.ptr, 0755, GIT_MKDIR_PATH));
 cl_git_pass(git_buf_joinpath(&filepath, filepath.ptr , "alternates"));

 cl_git_pass(git_filebuf_open(&file, git_buf_cstr(&filepath), 0, 0666));
 git_filebuf_printf(&file, "%s\n", git_buf_cstr(&destpath));
 cl_git_pass(git_filebuf_commit(&file));

 git_repository_free(repo);
}
