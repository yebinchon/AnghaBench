
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _odb ;
 int git_odb_free (int *) ;

void test_odb_mixed__cleanup(void)
{
 git_odb_free(_odb);
 _odb = ((void*)0);
}
