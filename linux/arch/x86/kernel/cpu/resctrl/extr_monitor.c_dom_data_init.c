
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmid_entry {int rmid; int list; } ;
struct rdt_resource {int num_rmid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct rmid_entry* __rmid_entry (int ) ;
 struct rmid_entry* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int rmid_free_lru ;
 struct rmid_entry* rmid_ptrs ;

__attribute__((used)) static int dom_data_init(struct rdt_resource *r)
{
 struct rmid_entry *entry = ((void*)0);
 int i, nr_rmids;

 nr_rmids = r->num_rmid;
 rmid_ptrs = kcalloc(nr_rmids, sizeof(struct rmid_entry), GFP_KERNEL);
 if (!rmid_ptrs)
  return -ENOMEM;

 for (i = 0; i < nr_rmids; i++) {
  entry = &rmid_ptrs[i];
  INIT_LIST_HEAD(&entry->list);

  entry->rmid = i;
  list_add_tail(&entry->list, &rmid_free_lru);
 }





 entry = __rmid_entry(0);
 list_del(&entry->list);

 return 0;
}
