
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int strlen (char*) ;
 int zfree (char*,int) ;

__attribute__((used)) static void exact_strfree (char *str) {
  if (str) {
    int len = strlen (str);





    zfree (str, len + 1);

  }
}
