
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_PARAM ;
 int free (void*) ;
 void* malloc (int) ;
 int memset (void*,int,int) ;

__attribute__((used)) static void *f_thread(void *unused) {
 int i;
 for (i = 0; i < N_PARAM; i++) {
  void *p = malloc(100);
  memset(p, 100, 1);
  free(p);
 }

 return ((void*)0);
}
