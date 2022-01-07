
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int line ;
struct TYPE_9__ {char const* ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int FILE ;


 int F_OK ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fputs (char*,int *) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ git__prefixcmp (char*,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char const*,char*) ;
 int git_buf_oom (TYPE_1__*) ;
 int git_buf_putc (TYPE_1__*,char) ;
 int git_buf_rtrim (TYPE_1__*) ;
 int git_path_prettify (TYPE_1__*,char const*,int *) ;
 scalar_t__ p_access (char const*,int ) ;
 int p_rename (char const*,char const*) ;
 int p_unlink (char*) ;
 int strlen (char*) ;

void rewrite_gitmodules(const char *workdir)
{
 git_buf in_f = GIT_BUF_INIT, out_f = GIT_BUF_INIT, path = GIT_BUF_INIT;
 FILE *in, *out;
 char line[256];

 cl_git_pass(git_buf_joinpath(&in_f, workdir, "gitmodules"));
 cl_git_pass(git_buf_joinpath(&out_f, workdir, ".gitmodules"));

 cl_assert((in = fopen(in_f.ptr, "rb")) != ((void*)0));
 cl_assert((out = fopen(out_f.ptr, "wb")) != ((void*)0));

 while (fgets(line, sizeof(line), in) != ((void*)0)) {
  char *scan = line;

  while (*scan == ' ' || *scan == '\t') scan++;


  if (git__prefixcmp(scan, "path =") == 0) {
   scan += strlen("path =");
   while (*scan == ' ') scan++;

   git_buf_joinpath(&path, workdir, scan);
   git_buf_rtrim(&path);
   git_buf_joinpath(&path, path.ptr, ".gitted");

   if (!git_buf_oom(&path) && p_access(path.ptr, F_OK) == 0) {
    git_buf_joinpath(&out_f, workdir, scan);
    git_buf_rtrim(&out_f);
    git_buf_joinpath(&out_f, out_f.ptr, ".git");

    if (!git_buf_oom(&out_f))
     p_rename(path.ptr, out_f.ptr);
   }
  }


  if (git__prefixcmp(scan, "url =") != 0) {
   fputs(line, out);
   continue;
  }


  scan += strlen("url =");
  while (*scan == ' ') scan++;

  if (*scan == '.') {
   git_buf_joinpath(&path, workdir, scan);
   git_buf_rtrim(&path);
  } else if (!*scan || *scan == '\n') {
   git_buf_joinpath(&path, workdir, "../testrepo.git");
  } else {
   fputs(line, out);
   continue;
  }

  git_path_prettify(&path, path.ptr, ((void*)0));
  git_buf_putc(&path, '\n');
  cl_assert(!git_buf_oom(&path));

  fwrite(line, scan - line, sizeof(char), out);
  fputs(path.ptr, out);
 }

 fclose(in);
 fclose(out);

 cl_must_pass(p_unlink(in_f.ptr));

 git_buf_dispose(&in_f);
 git_buf_dispose(&out_f);
 git_buf_dispose(&path);
}
