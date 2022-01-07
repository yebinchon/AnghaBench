
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writeout (int*,int) ;

__attribute__((used)) static inline void write_freq_int_array (long long freq[256]) {
  static int i_freq[256];
  int i;
  for (i = 0; i < 256; i++) {
    i_freq[i] = (freq[i] > 0x7fffffff ? 0x7fffffff : freq[i]);
  }
  writeout (i_freq, 1024);
}
