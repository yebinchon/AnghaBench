
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv4_range {int dummy; } ;



__attribute__((used)) static void ipv4_range_swap(void *a, void *b, int size)
{
 struct ipv4_range *ra = (struct ipv4_range *)a;
 struct ipv4_range *rb = (struct ipv4_range *)b;
 struct ipv4_range tmp;
 tmp = *ra;
 *ra = *rb;
 *rb = tmp;
}
