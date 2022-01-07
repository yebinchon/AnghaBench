
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;


 int packet_read_line_gently (int,int *,char**) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_reset (struct strbuf*) ;
 struct strbuf** strbuf_split_str (char*,char,int) ;
 int strcmp (int ,char*) ;

int subprocess_read_status(int fd, struct strbuf *status)
{
 struct strbuf **pair;
 char *line;
 int len;

 for (;;) {
  len = packet_read_line_gently(fd, ((void*)0), &line);
  if ((len < 0) || !line)
   break;
  pair = strbuf_split_str(line, '=', 2);
  if (pair[0] && pair[0]->len && pair[1]) {

   if (!strcmp(pair[0]->buf, "status=")) {
    strbuf_reset(status);
    strbuf_addbuf(status, pair[1]);
   }
  }
  strbuf_list_free(pair);
 }

 return (len < 0) ? len : 0;
}
