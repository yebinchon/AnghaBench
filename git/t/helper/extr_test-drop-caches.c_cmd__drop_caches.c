
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_dropcaches () ;
 int cmd_sync () ;

int cmd__drop_caches(int argc, const char **argv)
{
 cmd_sync();
 return cmd_dropcaches();
}
