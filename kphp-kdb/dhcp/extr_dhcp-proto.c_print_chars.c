
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void print_chars (FILE *f, unsigned char *data, int n) {
  int i;
  for (i = 0; i < n; i++) {
    fprintf (f, " %02x", (int) data[i]);
  }
}
