
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

int zipped_filename (const char *filename) {
  const int l = strlen (filename);
  if (l > 7 && !strcmp (filename + l - 7, ".bin.bz")) {
    return 1;
  }
  if (l > 4 && !strcmp (filename + l - 4, ".bin")) {
    return 0;
  }
  return -1;
}
