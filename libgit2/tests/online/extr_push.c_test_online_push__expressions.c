
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int do_push (char const**,int ,int *,int ,int *,int ,int,int ,int ) ;

void test_online_push__expressions(void)
{

 const char *specs_left_expr[] = { "refs/heads/b2~1:refs/heads/b2" };


 do_push(specs_left_expr, ARRAY_SIZE(specs_left_expr),
  ((void*)0), 0,
  ((void*)0), 0, -1, 0, 0);
}
