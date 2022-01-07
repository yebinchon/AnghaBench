
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_hdr {int dummy; } ;
struct mdesc_elem {int dummy; } ;



__attribute__((used)) static struct mdesc_elem *node_block(struct mdesc_hdr *mdesc)
{
 return (struct mdesc_elem *) (mdesc + 1);
}
