
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; unsigned char* a; void* next; void* e; void* H; } ;
typedef TYPE_1__ diff_hashtable_t ;


 int get_hashtable_size (int) ;
 int memset (void*,int,unsigned int) ;
 void* zmalloc (unsigned int) ;

__attribute__((used)) static void diff_hashtable_init (diff_hashtable_t *T, unsigned char *a, int N) {
  T->size = get_hashtable_size (N);
  T->a = a;
  unsigned sz = T->size * sizeof (T->H[0]);
  T->H = zmalloc (sz);
  memset (T->H, 0xff, sz);
  sz = 4 * T->size;
  T->e = zmalloc (sz);
  memset (T->e, 0xff, sz);
  sz = 4 * N;
  T->next = zmalloc (sz);
  memset (T->next, 0xff, sz);
}
