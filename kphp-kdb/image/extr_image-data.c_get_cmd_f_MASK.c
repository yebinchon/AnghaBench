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

/* Variables and functions */
 int ERR_CYRILIC_SYMBOL ; 
 int ERR_UNKNOWN_RESERVED_WORD ; 
 char const** RESERVED_WORDS_H ; 
 int RESERVED_WORDS_HASHTABLE_SIZE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  reserved_words ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/  unperfect_hash ; 

__attribute__((used)) static int FUNC3 (const char* cmd, int force) {
  unsigned hc = 0;
  const char *p = cmd;
  while (*p) {
    char c = *p++;
    if (c < 0) {
      return ERR_CYRILIC_SYMBOL;
    }
    if (FUNC0 (c)) {
      c = FUNC2 (c);
    }
    hc *= 131;
    hc += c;
  }

  unsigned i = hc &= RESERVED_WORDS_HASHTABLE_SIZE - 1;
  while (RESERVED_WORDS_H[i]) {
    if (!FUNC1 (cmd, RESERVED_WORDS_H[i])) {
      return i;
    }
    if (++i == RESERVED_WORDS_HASHTABLE_SIZE) {
      i = 0;
    }
  }

  if (force) {
    RESERVED_WORDS_H[i] = cmd;
    reserved_words++;
    if (i != hc) {
      unperfect_hash++;
    }
    return i;
  } else {
    return ERR_UNKNOWN_RESERVED_WORD;
  }
}