
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_ (int ,char const*) ;
 int git_path_isfile (char const*) ;

__attribute__((used)) static void assert_file_exists(const char *path)
{
 cl_assert_(git_path_isfile(path), path);
}
