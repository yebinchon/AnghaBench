
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ext_int_info {int entry; int handler; int code; } ;
typedef int ext_int_handler_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int ext_hash (int ) ;
 int * ext_int_hash ;
 int ext_int_hash_lock ;
 int hlist_add_head_rcu (int *,int *) ;
 struct ext_int_info* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int register_external_irq(u16 code, ext_int_handler_t handler)
{
 struct ext_int_info *p;
 unsigned long flags;
 int index;

 p = kmalloc(sizeof(*p), GFP_ATOMIC);
 if (!p)
  return -ENOMEM;
 p->code = code;
 p->handler = handler;
 index = ext_hash(code);

 spin_lock_irqsave(&ext_int_hash_lock, flags);
 hlist_add_head_rcu(&p->entry, &ext_int_hash[index]);
 spin_unlock_irqrestore(&ext_int_hash_lock, flags);
 return 0;
}
