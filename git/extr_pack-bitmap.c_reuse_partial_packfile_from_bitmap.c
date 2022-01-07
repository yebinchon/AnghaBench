
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct revindex_entry {int nr; } ;
struct packed_git {size_t num_objects; TYPE_2__* revindex; } ;
struct bitmap_index {size_t reuse_objects; struct packed_git* pack; struct bitmap* result; TYPE_1__* reverse_index; } ;
struct bitmap {size_t word_alloc; int * words; } ;
typedef int off_t ;
typedef int eword_t ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {struct revindex_entry* revindex; } ;


 scalar_t__ BITS_IN_EWORD ;
 int assert (struct bitmap*) ;
 double const bitmap_popcount (struct bitmap*) ;
 scalar_t__ ewah_bit_ctz64 (int ) ;
 int fprintf (int ,char*,...) ;
 char* hash_to_hex (unsigned char const*) ;
 unsigned char* nth_packed_object_sha1 (struct packed_git*,int ) ;
 int stderr ;

int reuse_partial_packfile_from_bitmap(struct bitmap_index *bitmap_git,
           struct packed_git **packfile,
           uint32_t *entries,
           off_t *up_to)
{




 static const double REUSE_PERCENT = 0.9;

 struct bitmap *result = bitmap_git->result;
 uint32_t reuse_threshold;
 uint32_t i, reuse_objects = 0;

 assert(result);

 for (i = 0; i < result->word_alloc; ++i) {
  if (result->words[i] != (eword_t)~0) {
   reuse_objects += ewah_bit_ctz64(~result->words[i]);
   break;
  }

  reuse_objects += BITS_IN_EWORD;
 }
 if (!reuse_objects)
  return -1;

 if (reuse_objects >= bitmap_git->pack->num_objects) {
  bitmap_git->reuse_objects = *entries = bitmap_git->pack->num_objects;
  *up_to = -1;
  *packfile = bitmap_git->pack;
  return 0;
 }

 reuse_threshold = bitmap_popcount(bitmap_git->result) * REUSE_PERCENT;

 if (reuse_objects < reuse_threshold)
  return -1;

 bitmap_git->reuse_objects = *entries = reuse_objects;
 *up_to = bitmap_git->pack->revindex[reuse_objects].offset;
 *packfile = bitmap_git->pack;

 return 0;
}
