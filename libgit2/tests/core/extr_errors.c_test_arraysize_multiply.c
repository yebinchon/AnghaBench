
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_CHECK_ALLOC_MULTIPLY (size_t*,size_t,size_t) ;

__attribute__((used)) static int test_arraysize_multiply(size_t nelem, size_t size)
{
 size_t out;
 GIT_ERROR_CHECK_ALLOC_MULTIPLY(&out, nelem, size);
 return 0;
}
