
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__n_inits ;
 int git_atomic_inc (int *) ;
 int init_common () ;

int git_libgit2_init(void)
{
 int ret;


 if ((ret = git_atomic_inc(&git__n_inits)) != 1)
  return ret;

 if ((ret = init_common()) < 0)
  return ret;

 return 1;
}
