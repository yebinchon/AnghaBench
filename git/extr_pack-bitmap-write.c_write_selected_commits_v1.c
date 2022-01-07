
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct pack_idx_entry {int dummy; } ;
struct hashfile {int dummy; } ;
struct bitmapped_commit {int write_as; int flags; int xor_offset; TYPE_2__* commit; } ;
struct TYPE_8__ {int selected_nr; struct bitmapped_commit* selected; } ;
struct TYPE_7__ {int hash; } ;
struct TYPE_5__ {TYPE_3__ oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;


 int BUG (char*) ;
 int dump_bitmap (struct hashfile*,int ) ;
 int hashwrite_be32 (struct hashfile*,int) ;
 int hashwrite_u8 (struct hashfile*,int ) ;
 int sha1_access ;
 int sha1_pos (int ,struct pack_idx_entry**,int ,int ) ;
 TYPE_4__ writer ;

__attribute__((used)) static void write_selected_commits_v1(struct hashfile *f,
          struct pack_idx_entry **index,
          uint32_t index_nr)
{
 int i;

 for (i = 0; i < writer.selected_nr; ++i) {
  struct bitmapped_commit *stored = &writer.selected[i];

  int commit_pos =
   sha1_pos(stored->commit->object.oid.hash, index, index_nr, sha1_access);

  if (commit_pos < 0)
   BUG("trying to write commit not in index");

  hashwrite_be32(f, commit_pos);
  hashwrite_u8(f, stored->xor_offset);
  hashwrite_u8(f, stored->flags);

  dump_bitmap(f, stored->write_as);
 }
}
