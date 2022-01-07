
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static void trim_last_path_component(struct strbuf *path)
{
 int i = path->len;


 while (i && path->buf[i - 1] == '/')
  i--;





 while (i && path->buf[i - 1] != '/')
  i--;

 strbuf_setlen(path, i);
}
