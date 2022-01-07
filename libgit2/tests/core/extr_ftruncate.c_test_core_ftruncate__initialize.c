
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int cl_is_env_set (char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int fd ;
 int filename ;
 int p_open (int ,int,int) ;

void test_core_ftruncate__initialize(void)
{
 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE"))
  cl_skip();

 cl_must_pass((fd = p_open(filename, O_CREAT | O_RDWR, 0644)));
}
