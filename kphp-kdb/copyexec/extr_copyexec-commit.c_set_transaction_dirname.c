
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strdup (char*) ;
 int strlen (char*) ;
 int transaction_dirname ;

__attribute__((used)) static void set_transaction_dirname (char *p) {
  int i = strlen (p);
  if (i == 0) {
    p = ".";
  } else if (p[i-1] == '/') {
    p[i - 1] = 0;
  }
  transaction_dirname = strdup (p);
}
