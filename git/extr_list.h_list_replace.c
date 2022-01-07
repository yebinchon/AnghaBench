
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_4__ {struct list_head* prev; } ;
struct TYPE_3__ {struct list_head* next; } ;



__attribute__((used)) static inline void list_replace(struct list_head *old, struct list_head *newp)
{
 newp->next = old->next;
 newp->prev = old->prev;
 newp->prev->next = newp;
 newp->next->prev = newp;
}
