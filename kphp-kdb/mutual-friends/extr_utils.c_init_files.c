
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int f_inited ;
 void* fcurr ;
 void* fd ;
 void* fnames ;
 void* fsize ;
 void* qmalloc0 (int) ;

void init_files (int fn) {
  assert (!f_inited);
  fnames = qmalloc0 (sizeof (char *) * fn);
  fd = qmalloc0 (sizeof (int) * fn);
  fsize = qmalloc0 (sizeof (long long) * fn);
  fcurr = qmalloc0 (sizeof (long long) * fn);
  f_inited = fn;
}
