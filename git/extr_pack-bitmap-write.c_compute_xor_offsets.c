
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ewah_bitmap {scalar_t__ buffer_size; } ;
struct bitmapped_commit {int xor_offset; struct ewah_bitmap* write_as; struct ewah_bitmap* bitmap; } ;
struct TYPE_2__ {int selected_nr; struct bitmapped_commit* selected; } ;


 int ewah_pool_free (struct ewah_bitmap*) ;
 struct ewah_bitmap* ewah_pool_new () ;
 int ewah_xor (struct ewah_bitmap*,struct ewah_bitmap*,struct ewah_bitmap*) ;
 TYPE_1__ writer ;

__attribute__((used)) static void compute_xor_offsets(void)
{
 static const int MAX_XOR_OFFSET_SEARCH = 10;

 int i, next = 0;

 while (next < writer.selected_nr) {
  struct bitmapped_commit *stored = &writer.selected[next];

  int best_offset = 0;
  struct ewah_bitmap *best_bitmap = stored->bitmap;
  struct ewah_bitmap *test_xor;

  for (i = 1; i <= MAX_XOR_OFFSET_SEARCH; ++i) {
   int curr = next - i;

   if (curr < 0)
    break;

   test_xor = ewah_pool_new();
   ewah_xor(writer.selected[curr].bitmap, stored->bitmap, test_xor);

   if (test_xor->buffer_size < best_bitmap->buffer_size) {
    if (best_bitmap != stored->bitmap)
     ewah_pool_free(best_bitmap);

    best_bitmap = test_xor;
    best_offset = i;
   } else {
    ewah_pool_free(test_xor);
   }
  }

  stored->xor_offset = best_offset;
  stored->write_as = best_bitmap;

  next++;
 }
}
