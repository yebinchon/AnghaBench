
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * g_config ;
 int * g_mailmap ;
 int * g_repo ;

void test_mailmap_parsing__initialize(void)
{
 g_repo = ((void*)0);
 g_mailmap = ((void*)0);
 g_config = ((void*)0);
}
