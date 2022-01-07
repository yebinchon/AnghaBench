
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_mailmap_free (int *) ;
 int * mailmap ;

void test_mailmap_basic__cleanup(void)
{
 git_mailmap_free(mailmap);
 mailmap = ((void*)0);
}
