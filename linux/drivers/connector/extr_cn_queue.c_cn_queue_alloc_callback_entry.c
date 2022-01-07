
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cn_queue_dev {int refcnt; } ;
struct TYPE_2__ {int id; int name; } ;
struct cn_callback_entry {void (* callback ) (struct cn_msg*,struct netlink_skb_parms*) ;TYPE_1__ id; struct cn_queue_dev* pdev; int refcnt; } ;
struct cb_id {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 struct cn_callback_entry* kzalloc (int,int ) ;
 int memcpy (int *,struct cb_id*,int) ;
 int pr_err (char*) ;
 int refcount_set (int *,int) ;
 int snprintf (int ,int,char*,char const*) ;

__attribute__((used)) static struct cn_callback_entry *
cn_queue_alloc_callback_entry(struct cn_queue_dev *dev, const char *name,
         struct cb_id *id,
         void (*callback)(struct cn_msg *,
            struct netlink_skb_parms *))
{
 struct cn_callback_entry *cbq;

 cbq = kzalloc(sizeof(*cbq), GFP_KERNEL);
 if (!cbq) {
  pr_err("Failed to create new callback queue.\n");
  return ((void*)0);
 }

 refcount_set(&cbq->refcnt, 1);

 atomic_inc(&dev->refcnt);
 cbq->pdev = dev;

 snprintf(cbq->id.name, sizeof(cbq->id.name), "%s", name);
 memcpy(&cbq->id.id, id, sizeof(struct cb_id));
 cbq->callback = callback;
 return cbq;
}
