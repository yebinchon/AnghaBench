
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct strbuf {int len; int buf; } ;
struct repository {TYPE_1__* objects; } ;
struct packed_git {int multi_pack_index; int mru; } ;
struct multi_pack_index {size_t num_packs; struct packed_git** packs; int local; int * pack_names; int object_dir; } ;
struct TYPE_2__ {int packed_git_mru; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 struct packed_git* add_packed_git (int ,int ,int ) ;
 int die (int ,size_t,size_t) ;
 int install_packed_git (struct repository*,struct packed_git*) ;
 int list_add_tail (int *,int *) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

int prepare_midx_pack(struct repository *r, struct multi_pack_index *m, uint32_t pack_int_id)
{
 struct strbuf pack_name = STRBUF_INIT;
 struct packed_git *p;

 if (pack_int_id >= m->num_packs)
  die(_("bad pack-int-id: %u (%u total packs)"),
      pack_int_id, m->num_packs);

 if (m->packs[pack_int_id])
  return 0;

 strbuf_addf(&pack_name, "%s/pack/%s", m->object_dir,
      m->pack_names[pack_int_id]);

 p = add_packed_git(pack_name.buf, pack_name.len, m->local);
 strbuf_release(&pack_name);

 if (!p)
  return 1;

 p->multi_pack_index = 1;
 m->packs[pack_int_id] = p;
 install_packed_git(r, p);
 list_add_tail(&p->mru, &r->objects->packed_git_mru);

 return 0;
}
