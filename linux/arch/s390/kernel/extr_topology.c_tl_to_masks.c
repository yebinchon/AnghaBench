
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
union topology_entry {int nl; int cpu; TYPE_1__ container; } ;
struct sysinfo_15_1_x {scalar_t__ length; union topology_entry* tle; } ;
struct mask_info {int id; struct mask_info* next; } ;


 int add_cpus_to_mask (int *,struct mask_info*,struct mask_info*,struct mask_info*) ;
 struct mask_info book_info ;
 int clear_masks () ;
 struct mask_info drawer_info ;
 union topology_entry* next_tle (union topology_entry*) ;
 struct mask_info socket_info ;

__attribute__((used)) static void tl_to_masks(struct sysinfo_15_1_x *info)
{
 struct mask_info *socket = &socket_info;
 struct mask_info *book = &book_info;
 struct mask_info *drawer = &drawer_info;
 union topology_entry *tle, *end;

 clear_masks();
 tle = info->tle;
 end = (union topology_entry *)((unsigned long)info + info->length);
 while (tle < end) {
  switch (tle->nl) {
  case 3:
   drawer = drawer->next;
   drawer->id = tle->container.id;
   break;
  case 2:
   book = book->next;
   book->id = tle->container.id;
   break;
  case 1:
   socket = socket->next;
   socket->id = tle->container.id;
   break;
  case 0:
   add_cpus_to_mask(&tle->cpu, drawer, book, socket);
   break;
  default:
   clear_masks();
   return;
  }
  tle = next_tle(tle);
 }
}
