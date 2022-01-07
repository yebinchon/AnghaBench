
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_FN ;
 int ** f ;
 int fclose (int *) ;

void close_data (void) {
  int i;
  for (i = 0; i < MAX_FN; i++) {
    if (f[i] != ((void*)0)) {
      fclose (f[i]);
    }
  }
}
