#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* user_list_offset; void* notword_dictionary_offset; void* word_dictionary_offset; void* notword_char_dictionary_offset; void* word_char_dictionary_offset; } ;

/* Variables and functions */
 TYPE_1__ Header ; 
 int /*<<< orphan*/  NotWordCharDict ; 
 int /*<<< orphan*/  NotWordList ; 
 int /*<<< orphan*/  WordCharDict ; 
 int /*<<< orphan*/  WordList ; 
 int /*<<< orphan*/  notword_codes_cnt ; 
 int /*<<< orphan*/  word_codes_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* write_pos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (void) {
  Header.word_char_dictionary_offset = write_pos;
  FUNC0 (&WordCharDict);
  Header.notword_char_dictionary_offset = write_pos;
  FUNC0 (&NotWordCharDict);
  Header.word_dictionary_offset = write_pos;
  FUNC1 (WordList, word_codes_cnt);
  Header.notword_dictionary_offset = write_pos;
  FUNC1 (NotWordList, notword_codes_cnt);
  Header.user_list_offset = write_pos;
}