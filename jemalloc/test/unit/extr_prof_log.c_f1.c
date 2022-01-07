
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f3 () ;
 int free (void*) ;
 void* malloc (int) ;

__attribute__((used)) static void f1() {
 void *p = malloc(100);
 f3();
 free(p);
}
