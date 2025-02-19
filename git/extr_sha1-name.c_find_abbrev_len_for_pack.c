
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int num_objects; scalar_t__ multi_pack_index; } ;
struct object_id {int dummy; } ;
struct min_abbrev_data {scalar_t__ cur_len; scalar_t__ init_len; struct object_id* oid; } ;


 int bsearch_pack (struct object_id const*,struct packed_git*,int*) ;
 int extend_abbrev_len (struct object_id*,struct min_abbrev_data*) ;
 scalar_t__ nth_packed_object_oid (struct object_id*,struct packed_git*,int) ;
 scalar_t__ open_pack_index (struct packed_git*) ;

__attribute__((used)) static void find_abbrev_len_for_pack(struct packed_git *p,
         struct min_abbrev_data *mad)
{
 int match = 0;
 uint32_t num, first = 0;
 struct object_id oid;
 const struct object_id *mad_oid;

 if (p->multi_pack_index)
  return;

 if (open_pack_index(p) || !p->num_objects)
  return;

 num = p->num_objects;
 mad_oid = mad->oid;
 match = bsearch_pack(mad_oid, p, &first);







 mad->init_len = 0;
 if (!match) {
  if (nth_packed_object_oid(&oid, p, first))
   extend_abbrev_len(&oid, mad);
 } else if (first < num - 1) {
  if (nth_packed_object_oid(&oid, p, first + 1))
   extend_abbrev_len(&oid, mad);
 }
 if (first > 0) {
  if (nth_packed_object_oid(&oid, p, first - 1))
   extend_abbrev_len(&oid, mad);
 }
 mad->init_len = mad->cur_len;
}
