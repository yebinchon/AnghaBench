
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ ignore_missing; } ;


 int die (char*,char const*) ;

__attribute__((used)) static int dotdot_missing(const char *arg, char *dotdot,
     struct rev_info *revs, int symmetric)
{
 if (revs->ignore_missing)
  return 0;

 *dotdot = '.';
 die(symmetric
     ? "Invalid symmetric difference expression %s"
     : "Invalid revision range %s", arg);
}
