
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ansI ;
 int assert (int) ;
 int engineF ;
 int engineN ;
 int ** f ;
 int fprintf (int *,char*,long long) ;
 scalar_t__ fscanf (int *,char*,long long*) ;
 scalar_t__ left_files ;

void run (void) {
  while (left_files) {
    long long sum = 0;

    int i;
    for (i = engineF; i < engineN; i++) {
      if (f[i] != ((void*)0)) {
        long long cur;
        if (fscanf (f[i], "%lld", &cur) <= 0) {
          left_files--;
        } else {
          sum += cur;
        }
      }
    }

    assert (left_files == 0 || left_files == engineN - engineF);
    if (left_files != 0) {
      fprintf (f[ansI], "%lld\n", sum);
    }
  }
}
