
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kstring_t ;
struct TYPE_4__ {int n; size_t* child; char* name; scalar_t__ d; } ;
typedef TYPE_1__ knhx1_t ;


 int kputc (char,int *) ;
 int kputsn (char*,int ,int *) ;
 int sprintf (char*,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static void format_node_recur(const knhx1_t *node, const knhx1_t *p, kstring_t *s, char *numbuf)
{
 if (p->n) {
  int i;
  kputc('(', s);
  for (i = 0; i < p->n; ++i) {
   if (i) kputc(',', s);
   format_node_recur(node, &node[p->child[i]], s, numbuf);
  }
  kputc(')', s);
  if (p->name) kputsn(p->name, strlen(p->name), s);
  if (p->d >= 0) {
   sprintf(numbuf, ":%g", p->d);
   kputsn(numbuf, strlen(numbuf), s);
  }
 } else kputsn(p->name, strlen(p->name), s);
}
