
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct line {char* text; struct line* next; } ;


 struct strbuf STRBUF_INIT ;
 int compare_strings ;
 int get_next ;
 struct line* llist_mergesort (struct line*,int ,int ,int ) ;
 int printf (char*,char*) ;
 int set_next ;
 int stdin ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_getwholeline (struct strbuf*,int ,char) ;
 struct line* xmalloc (int) ;

int cmd__mergesort(int argc, const char **argv)
{
 struct line *line, *p = ((void*)0), *lines = ((void*)0);
 struct strbuf sb = STRBUF_INIT;

 for (;;) {
  if (strbuf_getwholeline(&sb, stdin, '\n'))
   break;
  line = xmalloc(sizeof(struct line));
  line->text = strbuf_detach(&sb, ((void*)0));
  if (p) {
   line->next = p->next;
   p->next = line;
  } else {
   line->next = ((void*)0);
   lines = line;
  }
  p = line;
 }

 lines = llist_mergesort(lines, get_next, set_next, compare_strings);

 while (lines) {
  printf("%s", lines->text);
  lines = lines->next;
 }
 return 0;
}
