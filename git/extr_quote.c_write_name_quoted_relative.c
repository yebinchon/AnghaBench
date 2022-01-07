
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 char* relative_path (char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int write_name_quoted (char const*,int *,int) ;

void write_name_quoted_relative(const char *name, const char *prefix,
    FILE *fp, int terminator)
{
 struct strbuf sb = STRBUF_INIT;

 name = relative_path(name, prefix, &sb);
 write_name_quoted(name, fp, terminator);

 strbuf_release(&sb);
}
