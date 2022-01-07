
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*) ;

int friends_generate_new_key (char *buff, char *key, int len, void *E) {
 if (*key != '%') {
   return sprintf (buff, "%%%s", key);
 } else {
   return sprintf (buff, "%s", key);
 }
}
