#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ word; unsigned int freqs; } ;
typedef  TYPE_1__ pair_word_freqs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char*,int,int) ; 
 int FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (char const*,int) ; 

int FUNC9 (const char *text, int len, int universal, pair_word_freqs_t *Q, int max_words, int tag_owner, long long item_id) {
  static char buff[512];
  int i, no_nw = 1;
  const char *prev = 0;
  int Qw = 0;
  unsigned field = 0x10000;

  if (universal) {
    Q[Qw].word = FUNC8 ("\x1f@@", 3);
    Q[Qw].freqs = 0;
    Qw++;
  }

  if (tag_owner && ((int) (item_id >> 32))) {
    int owner_id = (int) item_id;
    if (owner_id) {
      Q[Qw].word = owner_id > 0 ? FUNC5 ("O", 1, owner_id) : FUNC5 ("W", 1, -owner_id);
      Q[Qw].freqs = 0;
      Qw++;
    }
  }

  while (Qw < max_words && *text) {
    if (text == prev) {
      FUNC4 ("error at %.30s\n", text);
      FUNC1 (2);
    }
    prev = text - no_nw;
    int wl = no_nw ? 0 : FUNC2 (text);
    no_nw = 0;
    if (wl < 0) {
      break;
    }
    while (wl > 0 && *text != 0x1f) {
      if (*text == '\t') {
        field = 1;
      }
      text++;
      wl--;
    }
    if (*text == 0x1f) {
      wl = 1;
      while ((unsigned char) text[wl] >= 0x40) {
        wl++;
      }
      no_nw = 1;
    } else {
      wl = FUNC3 (text);
    }
    if (!wl) {
      continue;
    }
    FUNC0 (wl > 0 && wl < 511);
    if (*text == 0x1f) {
      Q[Qw].word = FUNC8 (text, wl);
      Q[Qw].freqs = 0; /* we don't count tags */
      Qw++;
    } else {
      int wl2 = FUNC6 (buff, text, wl);
      FUNC0 (wl2 <= 510);
      Q[Qw].word = FUNC8 (buff, wl2);
      Q[Qw].freqs = field;
      Qw++;
    }
    text += wl;
  }

  int t = 0;
  if (Qw > 0) {
    FUNC7 (Q, 0, Qw - 1);
    int k;
    for (i = 0; i < Qw; i = k) {
      unsigned freqs = Q[i].freqs;
      for (k = i + 1; k < Qw && Q[k].word == Q[i].word; k++) {
        freqs += Q[k].freqs;
      }
      Q[t].word = Q[i].word;
      Q[t].freqs = freqs;
      //vkprintf (3, "Q[%d].word = %llx, Q[%d].freqs = %u\n", t, Q[t].word, t, Q[t].freqs);
      t++;
    }
  }
  return t;
}