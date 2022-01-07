
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backlog; } ;
struct lanai_vcc {TYPE_1__ tx; } ;


 int skb_queue_empty (int *) ;

__attribute__((used)) static inline int vcc_is_backlogged(const struct lanai_vcc *lvcc)
{
 return !skb_queue_empty(&lvcc->tx.backlog);
}
