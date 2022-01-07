
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int size; int count; struct count* counts; } ;
struct count {int x; int y; int count; } ;


 int PERM ;
 int assert (struct file*) ;
 struct file* findfile (char*) ;
 void* newarray (int,int,int ) ;

__attribute__((used)) static void apoint(int i, char *file, int x, int y, int count) {
 struct file *p = findfile(file);

 assert(p);
 if (i >= p->size) {
  int j;
  if (p->size == 0) {
   p->size = i >= 200 ? 2*i : 200;
   p->counts = newarray(p->size, sizeof *p->counts, PERM);
  } else {
   struct count *new;
   p->size = 2*i;
   new = newarray(p->size, sizeof *new, PERM);
   for (j = 0; j < p->count; j++)
    new[j] = p->counts[j];
   p->counts = new;
  }
  for (j = p->count; j < p->size; j++) {
   static struct count z;
   p->counts[j] = z;
  }
 }
 p->counts[i].x = x;
 p->counts[i].y = y;
 p->counts[i].count += count;
 if (i >= p->count)
  p->count = i + 1;
}
