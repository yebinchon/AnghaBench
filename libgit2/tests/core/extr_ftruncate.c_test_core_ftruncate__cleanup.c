
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fd ;
 int filename ;
 int p_close (scalar_t__) ;
 int p_unlink (int ) ;

void test_core_ftruncate__cleanup(void)
{
 if (fd < 0)
  return;

 p_close(fd);
 fd = 0;

 p_unlink(filename);
}
