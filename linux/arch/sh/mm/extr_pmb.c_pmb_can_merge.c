
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {scalar_t__ vpn; scalar_t__ size; scalar_t__ ppn; scalar_t__ flags; } ;



__attribute__((used)) static inline bool pmb_can_merge(struct pmb_entry *a, struct pmb_entry *b)
{
 return (b->vpn == (a->vpn + a->size)) &&
        (b->ppn == (a->ppn + a->size)) &&
        (b->flags == a->flags);
}
