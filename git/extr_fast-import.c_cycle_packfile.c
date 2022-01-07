
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_packfile () ;
 int start_packfile () ;

__attribute__((used)) static void cycle_packfile(void)
{
 end_packfile();
 start_packfile();
}
