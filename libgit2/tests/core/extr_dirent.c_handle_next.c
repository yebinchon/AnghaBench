
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int names; } ;
typedef TYPE_1__ walk_data ;
typedef int git_path_diriter ;


 int cl_assert_equal_s (char const*,char const*) ;
 int cl_assert_equal_strn (char const*,char*,int) ;
 int cl_git_pass (int ) ;
 int git_path_diriter_filename (char const**,size_t*,int *) ;
 int git_path_diriter_fullpath (char const**,size_t*,int *) ;
 int update_count (int ,char const*) ;

__attribute__((used)) static void handle_next(git_path_diriter *diriter, walk_data *walk)
{
 const char *fullpath, *filename;
 size_t fullpath_len, filename_len;

 cl_git_pass(git_path_diriter_fullpath(&fullpath, &fullpath_len, diriter));
 cl_git_pass(git_path_diriter_filename(&filename, &filename_len, diriter));

 cl_assert_equal_strn(fullpath, "sub/", 4);
 cl_assert_equal_s(fullpath+4, filename);

 update_count(walk->names, fullpath);
}
