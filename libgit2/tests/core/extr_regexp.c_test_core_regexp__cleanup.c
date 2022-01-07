
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_regexp_dispose (int *) ;
 int regex ;

void test_core_regexp__cleanup(void)
{
 git_regexp_dispose(&regex);
}
