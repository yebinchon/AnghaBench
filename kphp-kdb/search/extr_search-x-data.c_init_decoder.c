
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct searchx_list_decoder {int remaining; int len; int dec; } ;


 scalar_t__ IndexData ;
 int MAX_WORDS ;
 int Q_decoders ;
 int * allocated_list_decoders ;
 int assert (int) ;
 long long idx_bytes ;
 long long index_size ;
 int le_golomb ;
 int memcpy (long long*,void const*,int) ;
 long long word_index_offset ;
 int zmalloc_list_decoder (int,int,unsigned char*,int ,int ) ;

__attribute__((used)) static void init_decoder (struct searchx_list_decoder *D, int N, int K, int bytes, const void *file_offset) {
  unsigned char *ptr;
  if (bytes <= 8) {
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
  D->dec = allocated_list_decoders[Q_decoders++] = zmalloc_list_decoder (N, K, ptr, le_golomb, 0);
  D->remaining = K;
  D->len = K;
}
