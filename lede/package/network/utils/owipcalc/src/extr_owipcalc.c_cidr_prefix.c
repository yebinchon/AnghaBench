
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {int prefix; } ;



__attribute__((used)) static bool cidr_prefix(struct cidr *a, struct cidr *b)
{
 a->prefix = b->prefix;
 return 1;
}
