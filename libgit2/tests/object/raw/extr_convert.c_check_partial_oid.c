
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert_equal_s (char const*,char*) ;
 int git_oid_nfmt (char*,size_t,int const*) ;

__attribute__((used)) static void check_partial_oid(
 char *buffer, size_t count, const git_oid *oid, const char *expected)
{
 git_oid_nfmt(buffer, count, oid);
 buffer[count] = '\0';
 cl_assert_equal_s(expected, buffer);
}
