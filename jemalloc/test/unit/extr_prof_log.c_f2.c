
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* malloc (int) ;

__attribute__((used)) static void f2() {
 void *p = malloc(100);
 free(p);
}
