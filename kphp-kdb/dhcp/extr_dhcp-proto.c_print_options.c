
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;
 char* show_option (unsigned char) ;

__attribute__((used)) static void print_options (FILE *f, unsigned char *data, int n) {
  int i;
  for (i = 0; i < n; i++) {
    fprintf (f, "%s '%s'", (i > 0) ? "," : "", show_option (data[i]));
  }
}
