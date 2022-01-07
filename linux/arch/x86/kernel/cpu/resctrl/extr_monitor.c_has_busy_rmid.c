
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {scalar_t__ num_rmid; } ;
struct rdt_domain {int rmid_busy_llc; } ;


 scalar_t__ find_first_bit (int ,scalar_t__) ;

bool has_busy_rmid(struct rdt_resource *r, struct rdt_domain *d)
{
 return find_first_bit(d->rmid_busy_llc, r->num_rmid) != r->num_rmid;
}
