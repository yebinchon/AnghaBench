
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dl_free (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void dl_strfree (char *s) {
  if (s != ((void*)0)) {
    dl_free (s, strlen (s) + 1);
  }
}
