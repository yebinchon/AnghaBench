
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (char*) ;
 int cl_assert_equal_s (char const*,char*) ;
 int git__free (char*) ;
 char* git__malloc (size_t) ;
 int git_path_string_to_dir (char*,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void
check_string_to_dir(
 const char* path,
 size_t maxlen,
    const char* expected)
{
 size_t len = strlen(path);
 char *buf = git__malloc(len + 2);
 cl_assert(buf);

 strncpy(buf, path, len + 2);

 git_path_string_to_dir(buf, maxlen);

 cl_assert_equal_s(expected, buf);

 git__free(buf);
}
