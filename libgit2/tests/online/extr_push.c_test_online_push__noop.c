
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_push (int *,int ,int *,int ,int *,int ,int ,int ,int) ;

void test_online_push__noop(void)
{
 do_push(((void*)0), 0, ((void*)0), 0, ((void*)0), 0, 0, 0, 1);
}
