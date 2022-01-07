
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;


 int assert (struct tree*) ;
 int memset (struct tree*,int ,int) ;
 struct tree* zmalloc (int) ;

struct tree *tree_alloc (void) {
  struct tree *T = zmalloc (sizeof (*T));
  assert (T);
  memset (T, 0, sizeof (*T));
  return T;
}
