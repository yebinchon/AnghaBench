
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;
 int ntohl (int) ;
 char* show_ip (int ) ;

__attribute__((used)) static void print_addr_pairs (FILE *f, int *data, int n) {
  int i;
  for (i = 0; i < n; i++) {
    fprintf (f, " (%s, %s)", show_ip (ntohl (data[2*i])), show_ip (ntohl (data[2*i+1])));
  }
}
