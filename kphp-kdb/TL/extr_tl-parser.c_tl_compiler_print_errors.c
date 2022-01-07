
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int errors; char** error_msg; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void tl_compiler_print_errors (struct tl_compiler *C, FILE *f) {
  int i;
  for (i = 0; i < C->errors; i++) {
    fprintf (f, "%s\n", C->error_msg[i]);
  }
}
