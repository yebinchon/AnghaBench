#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct char_dictionary {long long* code_len; long long* freq; int* chars; unsigned int* first_codes; int** code_ptr; unsigned int* code; int max_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

long long FUNC3 (struct char_dictionary *Dict, long long *code_len, long long *freq) {
  long long total_bits = 0;
  static int code_cnt[32];
  int i, j;
  for (i = 0; i < 32; i++) {
    code_cnt[i] = 0;
  }
  for (i = 0; i < 256; i++) {
    if ((unsigned long long) code_len[i] > 32) {
      FUNC2 (stderr, "fatal: character %02x encoded with %hhd > 32 bits\n", i, code_len[i]);
      FUNC1 (3);
    }
    FUNC0 (freq[i] >= 0);
    total_bits += (long long) code_len[i] * freq[i];
    code_cnt[code_len[i]]++;
    Dict->code_len[i] = code_len[i];
    Dict->freq[i] = freq[i];
  }
  unsigned x = 0, y = (1 << 31);
  int *cptr = Dict->chars;
  for (i = 1; i <= 32; i++) {
    Dict->first_codes[i-1] = x;
    Dict->code_ptr[i-1] = cptr - (x >> (32 - i));
    for (j = 0; j < 256; j++) {
      if (code_len[j] == i) {
        *cptr++ = j;
        Dict->code[j] = x;
        x += y;
        FUNC0 (x >= y || !x);
      }

    }
    y >>= 1;
  }
  FUNC0 (!x);

  i = 32;
  while (i && !Dict->first_codes[i-1]) {
    i--;
  }
  Dict->max_bits = i;

  if (verbosity > 1) {
    for (i = 0; i < 256; i++) {
      FUNC2 (stderr, "character %02x ('%c'): %08x:%lld\n", i, (i < 32 ? '.' : i), Dict->code[i], Dict->code_len[i]);
    }
  }
    
  return total_bits;
}