
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct random_gather_extra {int bytes; } ;


 int sprintf (char*,char*,int) ;

int random_generate_new_key (char *buff, char *key, int len, void *E) {
  struct random_gather_extra *extra = E;
  return sprintf (buff, "random%d", extra->bytes + 64);
}
