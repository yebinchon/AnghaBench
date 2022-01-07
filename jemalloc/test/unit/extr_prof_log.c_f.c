
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_PARAM ;
 int * buf ;
 int free (int ) ;
 int malloc (int) ;

__attribute__((used)) static void f() {
 int i;
 for (i = 0; i < N_PARAM; i++) {
  buf[i] = malloc(100);
 }
 for (i = 0; i < N_PARAM; i++) {
  free(buf[i]);
 }
}
