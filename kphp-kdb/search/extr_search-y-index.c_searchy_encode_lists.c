
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct searchy_index_word {int dummy; } ;
typedef scalar_t__ hash_t ;
struct TYPE_11__ {int crc32_data; } ;
struct TYPE_10__ {int words; } ;
struct TYPE_9__ {scalar_t__ word; scalar_t__ file_offset; } ;
struct TYPE_8__ {scalar_t__ word; } ;


 TYPE_7__ CRC32_Header ;
 TYPE_6__ Header ;
 TYPE_1__* P ;
 int PC ;
 int SEEK_SET ;
 TYPE_2__* W ;
 int assert (int) ;
 double coordinate_bits ;
 scalar_t__ cur_offs ;
 int encode_lists_reset () ;
 int * fd ;
 int flushout () ;
 int idx_crc32_complement ;
 int item_positions ;
 int lists_encoded ;
 int lseek (int ,scalar_t__,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int searchy_encode_list (TYPE_1__*,int,TYPE_2__*) ;
 long long tag_bits ;
 long long terms_bits ;
 long long tot_items ;
 int tot_tags ;
 int tot_terms ;
 int vkprintf (int,char*,int,...) ;
 scalar_t__ word_index_offset ;
 int writeout (int ,long long) ;

__attribute__((used)) static int searchy_encode_lists (void) {
  encode_lists_reset ();
  lseek (fd[0], word_index_offset, SEEK_SET);
  int i = 0, j = 0, k;
  for (k = 0; k < PC; k = j) {
    hash_t word = P[k].word;
    for (j = k + 1; j < PC && P[j].word == word; j++) {}
    W[i].word = P[k].word;
    searchy_encode_list (P + k, j - k, W + i);
    i++;
  }
  assert (i == Header.words);

  CRC32_Header.crc32_data = ~idx_crc32_complement;
  memset (W+i, 0, sizeof (struct searchy_index_word));
  W[i].file_offset = cur_offs;

  writeout (item_positions, 4LL * tot_items + 4);
  vkprintf (1, "wrote %d item positions bytes\n", i);

  flushout ();
  long long data_bits = terms_bits + tag_bits;
  vkprintf (1, "total data bits %lld, coordinates (%.6lf%%)\n",
    data_bits, (100.0 * coordinate_bits) / data_bits);
  vkprintf (1, "wrote %lld codes bytes in %d lists\n", cur_offs - word_index_offset, lists_encoded);
  vkprintf (1, "%d terms (%lld bits) and %d tags (%lld bits)\n",
    tot_terms, terms_bits, tot_tags, tag_bits);
  return i;
}
