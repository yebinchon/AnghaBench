
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system (char*) ;

__attribute__((used)) static int cmd_dropcaches(void)
{
 return system("echo 3 | sudo tee /proc/sys/vm/drop_caches");
}
