
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rerere_id {size_t variant; TYPE_1__* collection; } ;
struct TYPE_2__ {scalar_t__* status; } ;


 int remove_variant (struct rerere_id*) ;
 int rerere_path (struct rerere_id*,char*) ;
 int unlink_or_warn (int ) ;

__attribute__((used)) static void unlink_rr_item(struct rerere_id *id)
{
 unlink_or_warn(rerere_path(id, "thisimage"));
 remove_variant(id);
 id->collection->status[id->variant] = 0;
}
