
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct search_list_decoder {int remaining; int len; int dec; } ;
struct TYPE_2__ {int left_subtree_size_threshold; } ;


 TYPE_1__ Header ;
 scalar_t__ IndexData ;
 int MAX_WORDS ;
 int Q_decoders ;
 int * allocated_list_decoders ;
 int assert (int) ;
 long long idx_bytes ;
 long long index_size ;
 int le_raw_int32 ;
 int memcpy (long long*,void const*,int) ;
 int vkprintf (int,char*,int,int) ;
 long long word_index_offset ;
 int zmalloc_list_decoder_ext (int,int,unsigned char*,int,int ,int ) ;

__attribute__((used)) static void init_decoder (struct search_list_decoder *D, int N, int K, int bytes, const void *file_offset, int compression_method) {
  unsigned char *ptr;
  vkprintf (3, "init_decoder (N = %d, K = %d)\n", N, K);
  if (K <= 2) {
    ptr = (unsigned char *) file_offset;
    compression_method = le_raw_int32;
  } else if (bytes <= 8) {
    ptr = (unsigned char *) file_offset;
  } else {
    long long offs;
    memcpy (&offs, file_offset, 8);
    assert (offs >= word_index_offset && offs < index_size);
    assert (offs + bytes <= index_size);
    offs -= word_index_offset;
    assert (offs >= 0 && offs < idx_bytes && offs + bytes <= idx_bytes);
    ptr = (unsigned char *)(IndexData + offs);
  }
  assert (Q_decoders < 2 * MAX_WORDS);
  D->dec = allocated_list_decoders[Q_decoders++] = zmalloc_list_decoder_ext (N, K, ptr, compression_method, 0, Header.left_subtree_size_threshold);
  D->remaining = K;
  D->len = K;
}
