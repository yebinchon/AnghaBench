
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,size_t) ;

__attribute__((used)) static int test_arraysize_add(size_t one, size_t two)
{
 size_t out;
 GIT_ERROR_CHECK_ALLOC_ADD(&out, one, two);
 return 0;
}
