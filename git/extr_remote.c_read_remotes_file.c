
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct remote {int configured_in_repo; int fetch; int push; int origin; int name; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int REMOTE_REMOTES ;
 struct strbuf STRBUF_INIT ;
 int add_url_alias (struct remote*,int ) ;
 int fclose (int *) ;
 int * fopen_or_warn (int ,char*) ;
 int git_path (char*,int ) ;
 int refspec_append (int *,int ) ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 int skip_spaces (char const*) ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 int xstrdup (int ) ;

__attribute__((used)) static void read_remotes_file(struct remote *remote)
{
 struct strbuf buf = STRBUF_INIT;
 FILE *f = fopen_or_warn(git_path("remotes/%s", remote->name), "r");

 if (!f)
  return;
 remote->configured_in_repo = 1;
 remote->origin = REMOTE_REMOTES;
 while (strbuf_getline(&buf, f) != EOF) {
  const char *v;

  strbuf_rtrim(&buf);

  if (skip_prefix(buf.buf, "URL:", &v))
   add_url_alias(remote, xstrdup(skip_spaces(v)));
  else if (skip_prefix(buf.buf, "Push:", &v))
   refspec_append(&remote->push, skip_spaces(v));
  else if (skip_prefix(buf.buf, "Pull:", &v))
   refspec_append(&remote->fetch, skip_spaces(v));
 }
 strbuf_release(&buf);
 fclose(f);
}
