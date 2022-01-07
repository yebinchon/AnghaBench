
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int clar_sandbox_path () ;
 int create_tmp_global_config (char*,char*,int ) ;
 char const* fixture_templates ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_join3 (TYPE_1__*,char,char const*,char*,char*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int p_rename (char*,char const*) ;
 int p_symlink (char*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void setup_templates(const char *name, bool setup_globally)
{
 git_buf path = GIT_BUF_INIT;

 cl_fixture_sandbox("template");
 if (strcmp(name, "template"))
  cl_must_pass(p_rename("template", name));

 fixture_templates = name;





 cl_git_pass(git_buf_join3(&path, '/', name, "hooks", "link.sample"));



 cl_must_pass(p_symlink("update.sample", path.ptr));


 git_buf_clear(&path);


 cl_git_pass(git_buf_join3(&path, '/', name, "hooks", ".dotfile"));
 cl_git_mkfile(path.ptr, "something\n");

 git_buf_clear(&path);

 if (setup_globally) {
  cl_git_pass(git_buf_joinpath(&path, clar_sandbox_path(), name));
  create_tmp_global_config("tmp_global_path", "init.templatedir", path.ptr);
 }

 git_buf_dispose(&path);
}
