
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _repo ;
 int g_umask ;
 int p_umask (int) ;

void test_repo_template__initialize(void)
{
 _repo = ((void*)0);


 if (!g_umask) {
  g_umask = p_umask(022);
  (void)p_umask(g_umask);
 }
}
