
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {int dummy; } ;


 int quiet ;

__attribute__((used)) static bool cidr_quiet(struct cidr *a)
{
 quiet = 1;
 return 1;
}
