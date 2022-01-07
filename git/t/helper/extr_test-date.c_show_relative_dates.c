
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int atoi (char const*) ;
 int printf (char*,char const*,char*) ;
 int show_date_relative (int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void show_relative_dates(const char **argv)
{
 struct strbuf buf = STRBUF_INIT;

 for (; *argv; argv++) {
  time_t t = atoi(*argv);
  show_date_relative(t, &buf);
  printf("%s -> %s\n", *argv, buf.buf);
 }
 strbuf_release(&buf);
}
