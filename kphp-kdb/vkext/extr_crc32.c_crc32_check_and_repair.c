
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 unsigned int compute_crc32 (void*,int) ;
 int find_corrupted_bit (int,unsigned int const) ;
 int repair_bit (void*,int,int) ;

int crc32_check_and_repair (void *input, int l, unsigned *input_crc32, int force_exit) {
  unsigned computed_crc32 = compute_crc32 (input, l);
  const unsigned crc32_diff = computed_crc32 ^ (*input_crc32);
  if (!crc32_diff) {
    return 0;
  }
  int k = find_corrupted_bit (l, crc32_diff);

  int r = repair_bit (input, l, k);

  if (!r) {
    assert (compute_crc32 (input, l) == *input_crc32);
    if (force_exit) {

    }
    return 1;
  }
  if (!(crc32_diff & (crc32_diff - 1))) {
    *input_crc32 = computed_crc32;
    if (force_exit) {

    }
    return 2;
  }
  assert (!force_exit);
  *input_crc32 = computed_crc32;
  return -1;
}
