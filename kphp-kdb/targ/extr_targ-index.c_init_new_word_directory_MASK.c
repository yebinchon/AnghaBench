#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct targ_index_word_directory_entry {int dummy; } ;
struct hash_word {int word_tree; int word; int num; struct hash_word* next; } ;
typedef  TYPE_1__* iterator_t ;
typedef  int hash_t ;
struct TYPE_9__ {int word; } ;
struct TYPE_8__ {int word; int data_offset; } ;
struct TYPE_7__ {int pos; } ;

/* Variables and functions */
 int HASH_BUCKETS ; 
 struct hash_word** Hash ; 
 int INFTY ; 
 TYPE_2__* NewWordDir ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hash_word* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 TYPE_4__* idx_worddir ; 
 int idx_words ; 
 TYPE_2__* FUNC7 (int) ; 
 int new_idx_words ; 
 int new_worddir_size ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

void FUNC9 (void) {
  int i, j = 0;
  struct hash_word *p;
  for (i = 0; i < HASH_BUCKETS; i++) {
    for (p = Hash[i]; p; p = p->next) {
      if (p->word_tree) {
	++j;
	FUNC0 ((unsigned) j < 0x7fffffff / sizeof (struct targ_index_word_directory_entry) - 1);
      }
    }
  }
  new_idx_words = j;
  new_worddir_size = (new_idx_words + idx_words + 1) * sizeof (struct targ_index_word_directory_entry);
  NewWordDir = FUNC7 (new_worddir_size);
  for (i = 0, j = 0; i < HASH_BUCKETS; i++) {
    for (p = Hash[i]; p; p = p->next) {
      if (p->word_tree) {
	FUNC2 ();
	int ilen = FUNC6 (p->word);
	if (ilen == p->num) {
	  FUNC3 (0);
	  iterator_t I = FUNC1 (p->word);
	  int res = I->pos;
	  FUNC4 (0);
	  if (res == INFTY) {
	    continue;
	  }
	}
	NewWordDir[j].word = p->word;
	NewWordDir[j].data_offset = p->word_tree;
	++j;
      }
    }
  }
  FUNC0 (j <= new_idx_words);

  for (i = 0; i < idx_words; i++) {
    hash_t word = idx_worddir[i].word;
    p = FUNC5 (word, 0);
    if (!p || !p->word_tree) {
      NewWordDir[j].word = word;
      NewWordDir[j].data_offset = 0;
      j++;
    }
  }

  FUNC0 (j <= new_idx_words + idx_words);
  new_idx_words = j;

  NewWordDir[j].word = -1;
  NewWordDir[j].data_offset = -1;
  new_worddir_size = (new_idx_words + 1) * sizeof (struct targ_index_word_directory_entry);

  FUNC8 (NewWordDir, j - 1);
}