
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int nc; int size; struct tree** c; } ;


 int assert (struct tree**) ;
 int memcpy (void**,struct tree**,int) ;
 int zfree (struct tree**,int) ;
 void** zmalloc (int) ;

void tree_add_child (struct tree *P, struct tree *C) {
  if (P->nc == P->size) {
    void **t = zmalloc (sizeof (void *) * (++P->size));
    memcpy (t, P->c, sizeof (void *) * (P->size - 1));
    if (P->c) {
      zfree (P->c, sizeof (void *) * (P->size - 1));
    }
    P->c = (void *)t;
    assert (P->c);
  }
  P->c[P->nc ++] = C;
}
