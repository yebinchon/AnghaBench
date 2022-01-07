
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert_equal_p (int ,int *) ;
 int git__memmem (char const*,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_absent(const char *haystack, const char *needle)
{
 cl_assert_equal_p(git__memmem(haystack, haystack ? strlen(haystack) : 0,
          needle, needle ? strlen(needle) : 0),
     ((void*)0));
}
