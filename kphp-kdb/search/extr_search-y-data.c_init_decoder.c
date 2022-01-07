
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag_dec; int term_dec; } ;
struct TYPE_6__ {int term; int remaining; int len; TYPE_1__ dec; } ;
typedef TYPE_2__ ilist_decoder_t ;
typedef int iheap_en_t ;
struct TYPE_7__ {int left_subtree_size_threshold; } ;


 TYPE_4__ Header ;
 scalar_t__ IndexData ;
 int assert (int) ;
 long long idx_bytes ;
 long long index_size ;
 int le_interpolative_ext ;
 int memcpy (long long*,void const*,int) ;
 int vkprintf (int,char*,int,int) ;
 long long word_index_offset ;
 int zmalloc_list_decoder_ext (int,int,unsigned char*,int ,int ,int ) ;
 int zmalloc_ylist_decoder (int *,int,int,unsigned char*,int ,int ) ;

__attribute__((used)) static void init_decoder (iheap_en_t *H, ilist_decoder_t *D, int N, int K, const void *file_offset, int term) {
  unsigned char *ptr;
  vkprintf (3, "init_decoder (N = %d, K = %d)\n", N, K);
  if (K < 0) {
    K *= -1;
    ptr = (unsigned char *) file_offset;
  } else {
    long long offs;
    memcpy (&offs, file_offset, 8);
    assert (offs >= word_index_offset && offs < index_size);
    offs -= word_index_offset;
    assert (offs >= 0 && offs < idx_bytes);
    ptr = (unsigned char *)(IndexData + offs);
  }
  D->term = term;
  if (term) {
    D->dec.term_dec = zmalloc_ylist_decoder (H, N, K, ptr, 0, Header.left_subtree_size_threshold);
  } else {
    D->dec.tag_dec = zmalloc_list_decoder_ext (N, K, ptr, le_interpolative_ext, 0, Header.left_subtree_size_threshold);
  }
  D->remaining = K;
  D->len = K;
}
