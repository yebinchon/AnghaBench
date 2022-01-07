
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func {struct caller* callers; } ;
struct caller {char* name; char* file; int x; int y; scalar_t__ count; struct caller* link; } ;


 int NEW (struct caller*,int ) ;
 int PERM ;
 int assert (struct func*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void acaller(char *caller, char *file, int x, int y, int count, struct func *callee) {
 struct caller *q;

 assert(callee);
 for (q = callee->callers; q && (caller != q->name
  || file != q->file || x != q->x || y != q->y); q = q->link)
  ;
 if (!q) {
  struct caller **r;
  NEW(q, PERM);
  q->name = caller;
  q->file = file;
  q->x = x;
  q->y = y;
  q->count = 0;
  for (r = &callee->callers; *r && (strcmp(q->name, (*r)->name) > 0
   || strcmp(q->file, (*r)->file) > 0 || q->y > (*r)->y || q->y > (*r)->y); r = &(*r)->link)
   ;
  q->link = *r;
  *r = q;
 }
 q->count += count;
}
