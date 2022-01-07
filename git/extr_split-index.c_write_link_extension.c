
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_3__ {int hash; } ;
struct split_index {int replace_bitmap; int delete_bitmap; TYPE_1__ base_oid; } ;
struct index_state {struct split_index* split_index; } ;
struct TYPE_4__ {int rawsz; } ;


 int ewah_serialize_strbuf (int ,struct strbuf*) ;
 int strbuf_add (struct strbuf*,int ,int ) ;
 TYPE_2__* the_hash_algo ;

int write_link_extension(struct strbuf *sb,
    struct index_state *istate)
{
 struct split_index *si = istate->split_index;
 strbuf_add(sb, si->base_oid.hash, the_hash_algo->rawsz);
 if (!si->delete_bitmap && !si->replace_bitmap)
  return 0;
 ewah_serialize_strbuf(si->delete_bitmap, sb);
 ewah_serialize_strbuf(si->replace_bitmap, sb);
 return 0;
}
