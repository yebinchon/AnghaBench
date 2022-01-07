
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int * fopen_or_warn (int ,char*) ;
 int git_path (char*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static char *read_line_from_git_path(const char *filename)
{
 struct strbuf buf = STRBUF_INIT;
 FILE *fp = fopen_or_warn(git_path("%s", filename), "r");

 if (!fp) {
  strbuf_release(&buf);
  return ((void*)0);
 }
 strbuf_getline_lf(&buf, fp);
 if (!fclose(fp)) {
  return strbuf_detach(&buf, ((void*)0));
 } else {
  strbuf_release(&buf);
  return ((void*)0);
 }
}
