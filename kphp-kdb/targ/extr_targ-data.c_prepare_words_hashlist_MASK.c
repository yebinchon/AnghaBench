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
typedef  int hash_t ;

/* Variables and functions */
 int* HL ; 
 int Hc ; 
 int MAX_WORD_HASHES ; 
 int MAX_WORD_LEN ; 
 char* Word ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int verbosity ; 
 int FUNC8 (char*,int) ; 

int FUNC9 (const char *str, int flags, int pattern, int translit, int type) {
  int len;
  static char trans_buff[256];
  if (!flags) {
    Hc = 0;
  }
  if (str) {
    while (*str) {
      len = FUNC1 (str);
      if (len < 0) {
        break;
      }
      for (; len > 0; len--) {
        if (*str++ == 9) {
          pattern >>= 1;
        }
      }
      len = FUNC2 (str);
      if (len < 0 || Hc >= MAX_WORD_HASHES) { break; }
      if (!len) {
        continue;
      }
      if (len < MAX_WORD_LEN && (pattern & 1)) {
	int len2 = len;
	if (translit) {
	  FUNC4 (Word, str, len);
	} else {
	  len2 = FUNC5 (Word, str, len);
	}
	HL[Hc++] = (FUNC8 (Word, len2) + type) | (1ULL << 63);
	if (translit && Hc < MAX_WORD_HASHES) {
	  FUNC7 (trans_buff, 250, Word, len);
	  if (FUNC6 (trans_buff, Word)) {
	    HL[Hc++] = (FUNC8 (trans_buff, -1) + type) | (1ULL << 63);
	    if (verbosity > 4) {
	      FUNC0 (stderr, "translit: '%s' -> '%s'\n", Word, trans_buff);
	    }
	  }
	}
      }
      str += len;
    }
  }
  if (flags <= 0 && Hc > 0) {
    int i, j = 1;
    hash_t h;
    FUNC3 (0, Hc-1);
    h = HL[0];
    for (i = 1; i < Hc; i++) {
      if (HL[i] != h) {
	HL[j++] = h = HL[i];
      }
    }
    Hc = j;
  }
  return Hc;
}