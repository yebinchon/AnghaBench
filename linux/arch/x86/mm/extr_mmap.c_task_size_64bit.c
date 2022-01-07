
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DEFAULT_MAP_WINDOW ;
 unsigned long TASK_SIZE_MAX ;

unsigned long task_size_64bit(int full_addr_space)
{
 return full_addr_space ? TASK_SIZE_MAX : DEFAULT_MAP_WINDOW;
}
