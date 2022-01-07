
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int cl_must_fail (int ) ;
 int git__free (char*) ;
 scalar_t__ git__malloc (int) ;
 int memset (char*,char,int) ;
 int p_creat (char*,int) ;

void test_core_dirent__length_limits(void)
{
 char *big_filename = (char *)git__malloc(FILENAME_MAX + 1);
 memset(big_filename, 'a', FILENAME_MAX + 1);
 big_filename[FILENAME_MAX] = 0;

 cl_must_fail(p_creat(big_filename, 0666));

 git__free(big_filename);
}
