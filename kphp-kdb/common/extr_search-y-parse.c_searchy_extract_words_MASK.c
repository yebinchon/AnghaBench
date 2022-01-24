#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int position; void* word; } ;
typedef  TYPE_1__ searchy_pair_word_position_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 void* FUNC5 (char*,int,int) ; 
 void* FUNC6 (char*,int,int) ; 
 void* FUNC7 (char const*,int) ; 

int FUNC8 (const char *text, int len, searchy_pair_word_position_t *Q, int max_words, int universal, int tag_owner, long long item_id, int *positions) {
  int no_nw = 1;
  const char *prev = 0;
  int Qw = 0;
  *positions = 0;

  if (universal) {
    Q[Qw].word = FUNC7 ("\x1f@@", 3);
    Q[Qw].position = 0;
    Qw++;
  }

  if (tag_owner && ((int) (item_id >> 32))) {
    int owner_id = (int) item_id;
    if (owner_id) {
      Q[Qw].word = owner_id > 0 ? FUNC5 ("O", 1, owner_id) : FUNC5 ("W", 1, -owner_id);
      Q[Qw].position = 0;
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
      Q[Qw].word = FUNC7 (text, wl);
      Q[Qw++].position = 0; /* we don't count tags */
    } else {
      (*positions)++;
      Q[Qw].word = FUNC6 ((char *) text, wl, 0);
      Q[Qw++].position = *positions;
      if (!no_nw && Qw < max_words) {
        Q[Qw].word = FUNC6 ((char *) text, wl, 1);
        if (Q[Qw].word != Q[Qw-1].word) {
          Q[Qw++].position = *positions;
        }
      }
    }
    text += wl;
  }

  return Qw;
}