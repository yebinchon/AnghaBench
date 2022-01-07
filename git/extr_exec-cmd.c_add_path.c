
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int PATH_SEP ;
 int strbuf_add_absolute_path (struct strbuf*,char const*) ;
 int strbuf_addch (struct strbuf*,int ) ;

__attribute__((used)) static void add_path(struct strbuf *out, const char *path)
{
 if (path && *path) {
  strbuf_add_absolute_path(out, path);
  strbuf_addch(out, PATH_SEP);
 }
}
