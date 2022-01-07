
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {scalar_t__ rawsz; } ;


 scalar_t__ MSB (int,int) ;
 int OBJ_OFS_DELTA ;
 int OBJ_REF_DELTA ;
 int die (char*) ;
 int find_pack_entry_one (unsigned char*,struct packed_git*) ;
 TYPE_1__* the_hash_algo ;
 unsigned char* use_pack (struct packed_git*,struct pack_window**,int,int *) ;

__attribute__((used)) static off_t get_delta_base(struct packed_git *p,
        struct pack_window **w_curs,
        off_t *curpos,
        enum object_type type,
        off_t delta_obj_offset)
{
 unsigned char *base_info = use_pack(p, w_curs, *curpos, ((void*)0));
 off_t base_offset;







 if (type == OBJ_OFS_DELTA) {
  unsigned used = 0;
  unsigned char c = base_info[used++];
  base_offset = c & 127;
  while (c & 128) {
   base_offset += 1;
   if (!base_offset || MSB(base_offset, 7))
    return 0;
   c = base_info[used++];
   base_offset = (base_offset << 7) + (c & 127);
  }
  base_offset = delta_obj_offset - base_offset;
  if (base_offset <= 0 || base_offset >= delta_obj_offset)
   return 0;
  *curpos += used;
 } else if (type == OBJ_REF_DELTA) {

  base_offset = find_pack_entry_one(base_info, p);
  *curpos += the_hash_algo->rawsz;
 } else
  die("I am totally screwed");
 return base_offset;
}
