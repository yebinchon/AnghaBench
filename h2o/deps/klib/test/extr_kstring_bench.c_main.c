
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; scalar_t__ l; scalar_t__ m; } ;
typedef TYPE_1__ kstring_t ;
typedef scalar_t__ clock_t ;


 double CLOCKS_PER_SEC ;
 int N ;
 scalar_t__ clock () ;
 int fprintf (int ,char*,double) ;
 int kputs (int,TYPE_1__*) ;
 int kputw (int,TYPE_1__*) ;
 int ksprintf (TYPE_1__*,char*,int) ;
 int lrand48 () ;
 int srand48 (int) ;
 int stderr ;

int main()
{
 int i;
 clock_t t;
 kstring_t s, s2;
 srand48(11);
 s.l = s.m = 0; s.s = 0;
 t = clock();
 for (i = 0; i < N; ++i) {
  int x = lrand48();
  s.l = 0;
  kputw(x, &s);
 }
 fprintf(stderr, "kputw: %lf\n", (double)(clock() - t) / CLOCKS_PER_SEC);
 srand48(11);
 t = clock();
 for (i = 0; i < N; ++i) {
  int x = lrand48();
  s.l = 0;
  ksprintf(&s, "%d", x);
 }
 fprintf(stderr, "ksprintf: %lf\n", (double)(clock() - t) / CLOCKS_PER_SEC);

 srand48(11);
 s2.l = s2.m = 0; s2.s = 0;
 t = clock();
 for (i = 0; i < N; ++i) {
  int x = lrand48();
  s2.l = s.l = 0;
  kputw(x, &s2);
  kputs(s2.s, &s);
 }
 fprintf(stderr, "kputw+kputs: %lf\n", (double)(clock() - t) / CLOCKS_PER_SEC);
 srand48(11);
 t = clock();
 for (i = 0; i < N; ++i) {
  int x = lrand48();
  s2.l = s.l = 0;
  kputw(x, &s2);
  ksprintf(&s, "%s", s2.s);
 }
 fprintf(stderr, "kputw+ksprintf: %lf\n", (double)(clock() - t) / CLOCKS_PER_SEC);
 return 0;
}
