
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_object ;


 int cl_assert_equal_s (char const*,char const*) ;
 scalar_t__ git_odb_object_data (int *) ;

__attribute__((used)) static void assert_object_contains(git_odb_object *obj, const char *expected)
{
 const char *actual = (const char *) git_odb_object_data(obj);

 cl_assert_equal_s(actual, expected);
}
