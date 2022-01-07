
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packed_git {scalar_t__ pack_size; } ;
struct TYPE_3__ {int offset; } ;
struct object_entry {size_t pack_id; TYPE_1__ idx; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {scalar_t__ rawsz; } ;


 struct packed_git** all_packs ;
 int close_pack_windows (struct packed_git*) ;
 int hashflush (int ) ;
 struct packed_git* pack_data ;
 int pack_file ;
 scalar_t__ pack_size ;
 TYPE_2__* the_hash_algo ;
 int the_repository ;
 void* unpack_entry (int ,struct packed_git*,int ,int*,unsigned long*) ;

__attribute__((used)) static void *gfi_unpack_entry(
 struct object_entry *oe,
 unsigned long *sizep)
{
 enum object_type type;
 struct packed_git *p = all_packs[oe->pack_id];
 if (p == pack_data && p->pack_size < (pack_size + the_hash_algo->rawsz)) {
  close_pack_windows(p);
  hashflush(pack_file);







  p->pack_size = pack_size + the_hash_algo->rawsz;
 }
 return unpack_entry(the_repository, p, oe->idx.offset, &type, sizep);
}
