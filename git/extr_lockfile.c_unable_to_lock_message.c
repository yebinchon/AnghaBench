
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int EEXIST ;
 int _ (char*) ;
 int absolute_path (char const*) ;
 int strbuf_addf (struct strbuf*,int ,int ,int ) ;
 int strerror (int) ;

void unable_to_lock_message(const char *path, int err, struct strbuf *buf)
{
 if (err == EEXIST) {
  strbuf_addf(buf, _("Unable to create '%s.lock': %s.\n\n"
      "Another git process seems to be running in this repository, e.g.\n"
      "an editor opened by 'git commit'. Please make sure all processes\n"
      "are terminated then try again. If it still fails, a git process\n"
      "may have crashed in this repository earlier:\n"
      "remove the file manually to continue."),
       absolute_path(path), strerror(err));
 } else
  strbuf_addf(buf, _("Unable to create '%s.lock': %s"),
       absolute_path(path), strerror(err));
}
