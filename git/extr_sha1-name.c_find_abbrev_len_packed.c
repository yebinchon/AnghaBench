
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct packed_git* next; } ;
struct multi_pack_index {struct multi_pack_index* next; } ;
struct min_abbrev_data {int repo; } ;


 int find_abbrev_len_for_midx (struct multi_pack_index*,struct min_abbrev_data*) ;
 int find_abbrev_len_for_pack (struct packed_git*,struct min_abbrev_data*) ;
 struct multi_pack_index* get_multi_pack_index (int ) ;
 struct packed_git* get_packed_git (int ) ;

__attribute__((used)) static void find_abbrev_len_packed(struct min_abbrev_data *mad)
{
 struct multi_pack_index *m;
 struct packed_git *p;

 for (m = get_multi_pack_index(mad->repo); m; m = m->next)
  find_abbrev_len_for_midx(m, mad);
 for (p = get_packed_git(mad->repo); p; p = p->next)
  find_abbrev_len_for_pack(p, mad);
}
