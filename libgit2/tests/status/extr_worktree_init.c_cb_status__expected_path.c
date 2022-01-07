
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (unsigned int) ;
 int cl_assert_equal_s (char const*,char const*) ;
 int cl_fail (char*) ;

__attribute__((used)) static int cb_status__expected_path(const char *p, unsigned int s, void *payload)
{
 const char *expected_path = (const char *)payload;

 GIT_UNUSED(s);

 if (payload == ((void*)0))
  cl_fail("Unexpected path");

 cl_assert_equal_s(expected_path, p);

 return 0;
}
