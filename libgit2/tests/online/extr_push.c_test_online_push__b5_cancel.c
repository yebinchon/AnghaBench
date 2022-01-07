
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int GIT_EUSER ;
 int do_push (char const**,int ,int *,int ,int *,int ,int ,int,int) ;

void test_online_push__b5_cancel(void)
{
 const char *specs[] = { "refs/heads/b5:refs/heads/b5" };
 do_push(specs, ARRAY_SIZE(specs), ((void*)0), 0, ((void*)0), 0, GIT_EUSER, 1, 1);
}
