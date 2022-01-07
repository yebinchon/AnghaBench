
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fputs (char*,int ) ;
 void* realloc (void*,size_t) ;
 int stderr ;

__attribute__((used)) static void* realloc_or_die(void* ptr, size_t n) {
  void* result = realloc(ptr, n);
  if (n > 0 && result == ((void*)0)) {
    fputs("Reallocation failure, aborting.\n", stderr);
    abort();
  }
  return result;
}
