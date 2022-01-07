
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int assert (int) ;
 char* output_filename ;
 int snprintf (char*,int,char*,char*,int ) ;
 int strdup (char*) ;
 int time (int *) ;
 int tmp_filename ;

void compute_tmp_filename (void) {
  char a[PATH_MAX];
  assert (snprintf (a, PATH_MAX, "%s.tmp.%ld", output_filename, time (((void*)0))) < PATH_MAX);
  tmp_filename = strdup (a);
}
