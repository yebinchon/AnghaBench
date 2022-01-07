
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct remote {int configured_in_repo; int fetch_tags; int push; int fetch; int name; int origin; } ;
typedef int FILE ;


 int REMOTE_BRANCHES ;
 struct strbuf STRBUF_INIT ;
 int add_url_alias (struct remote*,int ) ;
 int fclose (int *) ;
 int * fopen_or_warn (int ,char*) ;
 int git_path (char*,int ) ;
 int refspec_append (int *,int ) ;
 int strbuf_addf (struct strbuf*,char*,char*,...) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static void read_branches_file(struct remote *remote)
{
 char *frag;
 struct strbuf buf = STRBUF_INIT;
 FILE *f = fopen_or_warn(git_path("branches/%s", remote->name), "r");

 if (!f)
  return;

 strbuf_getline_lf(&buf, f);
 fclose(f);
 strbuf_trim(&buf);
 if (!buf.len) {
  strbuf_release(&buf);
  return;
 }

 remote->configured_in_repo = 1;
 remote->origin = REMOTE_BRANCHES;







 frag = strchr(buf.buf, '#');
 if (frag)
  *(frag++) = '\0';
 else
  frag = "master";

 add_url_alias(remote, strbuf_detach(&buf, ((void*)0)));
 strbuf_addf(&buf, "refs/heads/%s:refs/heads/%s",
      frag, remote->name);
 refspec_append(&remote->fetch, buf.buf);





 strbuf_reset(&buf);
 strbuf_addf(&buf, "HEAD:refs/heads/%s", frag);
 refspec_append(&remote->push, buf.buf);
 remote->fetch_tags = 1;
 strbuf_release(&buf);
}
