
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {struct packed_git* next; } ;
struct multi_pack_index {struct multi_pack_index* next; } ;
struct disambiguate_state {int ambiguous; int repo; } ;


 struct multi_pack_index* get_multi_pack_index (int ) ;
 struct packed_git* get_packed_git (int ) ;
 int unique_in_midx (struct multi_pack_index*,struct disambiguate_state*) ;
 int unique_in_pack (struct packed_git*,struct disambiguate_state*) ;

__attribute__((used)) static void find_short_packed_object(struct disambiguate_state *ds)
{
 struct multi_pack_index *m;
 struct packed_git *p;

 for (m = get_multi_pack_index(ds->repo); m && !ds->ambiguous;
      m = m->next)
  unique_in_midx(m, ds);
 for (p = get_packed_git(ds->repo); p && !ds->ambiguous;
      p = p->next)
  unique_in_pack(p, ds);
}
