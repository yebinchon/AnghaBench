
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct packed_git {int pack_name; int pack_local; struct packed_git* next; } ;
struct pack_info {int dummy; } ;
struct TYPE_5__ {int old_num; int new_num; struct packed_git* p; } ;


 int ALLOC_GROW (TYPE_1__**,int,size_t) ;
 int QSORT (TYPE_1__**,int,int ) ;
 int compare_info ;
 int file_exists (int ) ;
 struct packed_git* get_all_packs (int ) ;
 TYPE_1__** info ;
 int num_pack ;
 int read_pack_info_file (char const*) ;
 int the_repository ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static void init_pack_info(const char *infofile, int force)
{
 struct packed_git *p;
 int stale;
 int i;
 size_t alloc = 0;

 for (p = get_all_packs(the_repository); p; p = p->next) {



  if (!p->pack_local || !file_exists(p->pack_name))
   continue;

  i = num_pack++;
  ALLOC_GROW(info, num_pack, alloc);
  info[i] = xcalloc(1, sizeof(struct pack_info));
  info[i]->p = p;
  info[i]->old_num = -1;
 }

 if (infofile && !force)
  stale = read_pack_info_file(infofile);
 else
  stale = 1;

 for (i = 0; i < num_pack; i++)
  if (stale)
   info[i]->old_num = -1;


 QSORT(info, num_pack, compare_info);
 for (i = 0; i < num_pack; i++)
  info[i]->new_num = i;
}
