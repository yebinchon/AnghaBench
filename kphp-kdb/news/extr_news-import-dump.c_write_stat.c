
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXUSERS ;
 size_t* a ;
 int* b ;
 int* c ;
 int fprintf (int ,char*,int,...) ;
 int log_split_mod ;
 int stderr ;

void write_stat (void) {
  int i;
  int max = 0;
  for (i = 0; i < MAXUSERS; i++) {
    b[a[i]] ++;
    if (a[i] > max) max = a[i];
  }
  double mean = 0;
  int cou = 0;
  for (i = 1; i <= max; i++) {
    mean += i * b[i];
    cou += b[i];
  }
  mean /= cou;
  fprintf (stderr, "mean bookmarks number is %lf\n", mean);
  fprintf (stderr, "maximal bookmarks number is %d\n", max);
  fprintf (stderr, "total users number is %d\n", cou);

  int e = 0;
  for (i = 1; i <= 100; i++) {
    e += b[i];
    fprintf (stderr, "number of users with %d bookmarks is %d (with more %d)\n", i, b[i], cou - e);
  }

  int min = 1000000000;
  max = 0;
  mean = 0;
  int mai = -1;
  int mii = -1;
  for (i = 0; i < log_split_mod; i++) {
    if (max < c[i]) {
      max = c[i];
      mai = i;
    }
    if (min > c[i]) {
      min = c[i];
      mii = i;
    }
    mean += c[i];
  }
  mean /= log_split_mod;
  fprintf (stderr, "max items in file %d (file %d)\n", max, mai);
  fprintf (stderr, "min items in file %d (file %d)\n", min, mii);
  fprintf (stderr, "mean items in file %d\n", (int)mean);
}
