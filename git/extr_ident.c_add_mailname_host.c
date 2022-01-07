
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen_or_warn (char*,char*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int warning_errno (char*) ;

__attribute__((used)) static int add_mailname_host(struct strbuf *buf)
{
 FILE *mailname;
 struct strbuf mailnamebuf = STRBUF_INIT;

 mailname = fopen_or_warn("/etc/mailname", "r");
 if (!mailname)
  return -1;

 if (strbuf_getline(&mailnamebuf, mailname) == EOF) {
  if (ferror(mailname))
   warning_errno("cannot read /etc/mailname");
  strbuf_release(&mailnamebuf);
  fclose(mailname);
  return -1;
 }

 strbuf_addbuf(buf, &mailnamebuf);
 strbuf_release(&mailnamebuf);
 fclose(mailname);
 return 0;
}
