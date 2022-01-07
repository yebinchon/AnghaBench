
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct commit {int dummy; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 struct commit* lookup_commit_reference_by_name (int ) ;
 int strbuf_addf (struct strbuf*,char*,int,char const*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_splice (struct strbuf*,int ,int ,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static struct commit *lookup_label(const char *label, int len,
       struct strbuf *buf)
{
 struct commit *commit;

 strbuf_reset(buf);
 strbuf_addf(buf, "refs/rewritten/%.*s", len, label);
 commit = lookup_commit_reference_by_name(buf->buf);
 if (!commit) {

  strbuf_splice(buf, 0, strlen("refs/rewritten/"), "", 0);
  commit = lookup_commit_reference_by_name(buf->buf);
 }

 if (!commit)
  error(_("could not resolve '%s'"), buf->buf);

 return commit;
}
