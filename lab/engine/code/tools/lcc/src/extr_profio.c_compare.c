
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct count {scalar_t__ y; int x; } ;



__attribute__((used)) static int compare(struct count *a, struct count *b) {
 if (a->y == b->y)
  return a->x - b->x;
 return a->y - b->y;
}
