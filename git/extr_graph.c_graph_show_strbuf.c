
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct git_graph {int dummy; } ;
typedef int FILE ;


 int fwrite (char*,int,size_t,int *) ;
 int graph_show_oneline (struct git_graph*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void graph_show_strbuf(struct git_graph *graph,
         FILE *file,
         struct strbuf const *sb)
{
 char *p;





 p = sb->buf;
 while (p) {
  size_t len;
  char *next_p = strchr(p, '\n');
  if (next_p) {
   next_p++;
   len = next_p - p;
  } else {
   len = (sb->buf + sb->len) - p;
  }
  fwrite(p, sizeof(char), len, file);
  if (next_p && *next_p != '\0')
   graph_show_oneline(graph);
  p = next_p;
 }
}
