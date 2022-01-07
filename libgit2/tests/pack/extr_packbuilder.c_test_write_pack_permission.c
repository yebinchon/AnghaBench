
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 int _packbuilder ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_packbuilder_write (int ,char*,int,int *,int *) ;
 int p_stat (char*,struct stat*) ;
 int p_umask (int) ;
 int seed_packbuilder () ;

__attribute__((used)) static void test_write_pack_permission(mode_t given, mode_t expected)
{
 struct stat statbuf;
 mode_t mask, os_mask;

 seed_packbuilder();

 git_packbuilder_write(_packbuilder, ".", given, ((void*)0), ((void*)0));







 os_mask = 0777;


 mask = p_umask(0);
 p_umask(mask);

 cl_git_pass(p_stat("pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.idx", &statbuf));
 cl_assert_equal_i(statbuf.st_mode & os_mask, (expected & ~mask) & os_mask);

 cl_git_pass(p_stat("pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.pack", &statbuf));
 cl_assert_equal_i(statbuf.st_mode & os_mask, (expected & ~mask) & os_mask);
}
