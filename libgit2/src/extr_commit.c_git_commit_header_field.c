
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* raw_header; } ;
typedef TYPE_1__ git_commit ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_OBJECT ;
 scalar_t__ git__prefixcmp (char const*,char const*) ;
 int git_buf_clear (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_put (int *,char const*,int) ;
 int git_buf_putc (int *,char) ;
 int git_error_set (int ,char*,...) ;
 int git_error_set_oom () ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int git_commit_header_field(git_buf *out, const git_commit *commit, const char *field)
{
 const char *eol, *buf = commit->raw_header;

 git_buf_clear(out);

 while ((eol = strchr(buf, '\n'))) {

  if (buf[0] == ' ') {
   buf = eol + 1;
   continue;
  }


  if (git__prefixcmp(buf, field)) {
   buf = eol + 1;
   continue;
  }

  buf += strlen(field);

  if (buf[0] != ' ') {
   buf = eol + 1;
   continue;
  }

  buf++;

  git_buf_put(out, buf, eol - buf);
  if (git_buf_oom(out))
   goto oom;


  while (eol[1] == ' ') {
   git_buf_putc(out, '\n');
   buf = eol + 2;
   eol = strchr(buf, '\n');
   if (!eol)
    goto malformed;

   git_buf_put(out, buf, eol - buf);
  }

  if (git_buf_oom(out))
   goto oom;

  return 0;
 }

 git_error_set(GIT_ERROR_OBJECT, "no such field '%s'", field);
 return GIT_ENOTFOUND;

malformed:
 git_error_set(GIT_ERROR_OBJECT, "malformed header");
 return -1;
oom:
 git_error_set_oom();
 return -1;
}
