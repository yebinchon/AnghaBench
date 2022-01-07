
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct paint_info {int ref_bitmap; int nr_bits; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int BOTTOM ;
 int DIV_ROUND_UP (int ,int) ;
 scalar_t__ OBJ_COMMIT ;
 int SEEN ;
 int UNINTERESTING ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int die (char*,int ) ;
 int free (unsigned int*) ;
 struct object* get_indexed_object (unsigned int) ;
 unsigned int get_max_object_index () ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 scalar_t__ memcmp (unsigned int*,unsigned int*,size_t) ;
 int memcpy (unsigned int*,unsigned int*,size_t) ;
 int memset (unsigned int*,int ,size_t) ;
 int oid_to_hex (int *) ;
 unsigned int* paint_alloc (struct paint_info*) ;
 scalar_t__ parse_commit (struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;
 unsigned int** ref_bitmap_at (int *,struct commit*) ;
 size_t st_mult (int,int) ;
 int the_repository ;
 unsigned int* xmalloc (size_t) ;

__attribute__((used)) static void paint_down(struct paint_info *info, const struct object_id *oid,
         unsigned int id)
{
 unsigned int i, nr;
 struct commit_list *head = ((void*)0);
 int bitmap_nr = DIV_ROUND_UP(info->nr_bits, 32);
 size_t bitmap_size = st_mult(sizeof(uint32_t), bitmap_nr);
 struct commit *c = lookup_commit_reference_gently(the_repository, oid,
         1);
 uint32_t *tmp;
 uint32_t *bitmap;

 if (!c)
  return;

 tmp = xmalloc(bitmap_size);
 bitmap = paint_alloc(info);
 memset(bitmap, 0, bitmap_size);
 bitmap[id / 32] |= (1U << (id % 32));
 commit_list_insert(c, &head);
 while (head) {
  struct commit_list *p;
  struct commit *c = pop_commit(&head);
  uint32_t **refs = ref_bitmap_at(&info->ref_bitmap, c);


  if (c->object.flags & (SEEN | UNINTERESTING))
   continue;
  else
   c->object.flags |= SEEN;

  if (*refs == ((void*)0))
   *refs = bitmap;
  else {
   memcpy(tmp, *refs, bitmap_size);
   for (i = 0; i < bitmap_nr; i++)
    tmp[i] |= bitmap[i];
   if (memcmp(tmp, *refs, bitmap_size)) {
    *refs = paint_alloc(info);
    memcpy(*refs, tmp, bitmap_size);
   }
  }

  if (c->object.flags & BOTTOM)
   continue;

  if (parse_commit(c))
   die("unable to parse commit %s",
       oid_to_hex(&c->object.oid));

  for (p = c->parents; p; p = p->next) {
   if (p->item->object.flags & SEEN)
    continue;
   commit_list_insert(p->item, &head);
  }
 }

 nr = get_max_object_index();
 for (i = 0; i < nr; i++) {
  struct object *o = get_indexed_object(i);
  if (o && o->type == OBJ_COMMIT)
   o->flags &= ~SEEN;
 }

 free(tmp);
}
