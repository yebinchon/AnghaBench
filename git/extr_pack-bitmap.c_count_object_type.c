
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ewah_iterator {int dummy; } ;
struct eindex {size_t count; TYPE_1__** objects; } ;
struct bitmap_index {TYPE_2__* pack; int tags; int blobs; int trees; int commits; struct eindex ext_index; struct bitmap* result; } ;
struct bitmap {size_t word_alloc; int* words; } ;
typedef int eword_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {scalar_t__ num_objects; } ;
struct TYPE_3__ {int type; } ;






 scalar_t__ bitmap_get (struct bitmap*,scalar_t__) ;
 size_t ewah_bit_popcount64 (int) ;
 int ewah_iterator_init (struct ewah_iterator*,int ) ;
 scalar_t__ ewah_iterator_next (int*,struct ewah_iterator*) ;

__attribute__((used)) static uint32_t count_object_type(struct bitmap_index *bitmap_git,
      enum object_type type)
{
 struct bitmap *objects = bitmap_git->result;
 struct eindex *eindex = &bitmap_git->ext_index;

 uint32_t i = 0, count = 0;
 struct ewah_iterator it;
 eword_t filter;

 switch (type) {
 case 130:
  ewah_iterator_init(&it, bitmap_git->commits);
  break;

 case 128:
  ewah_iterator_init(&it, bitmap_git->trees);
  break;

 case 131:
  ewah_iterator_init(&it, bitmap_git->blobs);
  break;

 case 129:
  ewah_iterator_init(&it, bitmap_git->tags);
  break;

 default:
  return 0;
 }

 while (i < objects->word_alloc && ewah_iterator_next(&filter, &it)) {
  eword_t word = objects->words[i++] & filter;
  count += ewah_bit_popcount64(word);
 }

 for (i = 0; i < eindex->count; ++i) {
  if (eindex->objects[i]->type == type &&
   bitmap_get(objects, bitmap_git->pack->num_objects + i))
   count++;
 }

 return count;
}
