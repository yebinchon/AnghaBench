
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backlog; } ;
struct lanai_vcc {int vci; TYPE_1__ tx; } ;


 int GFP_KERNEL ;
 struct lanai_vcc* kzalloc (int,int ) ;
 scalar_t__ likely (int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static inline struct lanai_vcc *new_lanai_vcc(void)
{
 struct lanai_vcc *lvcc;
 lvcc = kzalloc(sizeof(*lvcc), GFP_KERNEL);
 if (likely(lvcc != ((void*)0))) {
  skb_queue_head_init(&lvcc->tx.backlog);



 }
 return lvcc;
}
