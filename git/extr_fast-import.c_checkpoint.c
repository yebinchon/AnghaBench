
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ checkpoint_requested ;
 int cycle_packfile () ;
 int dump_branches () ;
 int dump_marks () ;
 int dump_tags () ;
 scalar_t__ object_count ;

__attribute__((used)) static void checkpoint(void)
{
 checkpoint_requested = 0;
 if (object_count) {
  cycle_packfile();
 }
 dump_branches();
 dump_tags();
 dump_marks();
}
