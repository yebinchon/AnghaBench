
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ need_shared_repository_from_config ;
 int the_shared_repository ;

void set_shared_repository(int value)
{
 the_shared_repository = value;
 need_shared_repository_from_config = 0;
}
