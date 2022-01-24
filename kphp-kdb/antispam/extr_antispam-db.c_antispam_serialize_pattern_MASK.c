#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  p_ch; struct TYPE_4__* parent; } ;
typedef  TYPE_1__ trie_node_t ;
struct TYPE_5__ {int ip; int uahash; scalar_t__ flags; TYPE_1__* trie_node; } ;
typedef  TYPE_2__ pattern_t ;

/* Variables and functions */
 int FALSE ; 
 int MAX_PATTERN_LEN ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  id_to_pattern ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,unsigned short) ; 

bool FUNC3 (int id, char *output/*, output_max = MAX_PATTERN_LEN*/) {
  pattern_t *pattern = FUNC1 (id_to_pattern, id);
  if (pattern == 0) {
    return FALSE;
  }
  trie_node_t *v = pattern->trie_node;

  int length = 0; // '\0' exclusive
  trie_node_t const *p = v;
  for (; p->parent != 0; p = p->parent) {
    ++length;
  }
  FUNC0 (length + 40 <= MAX_PATTERN_LEN); // all 'output' must be bounded by MAX_PATTERN_LEN

  output += FUNC2 (output, "%d,%u,%u,%hu,", id, pattern->ip, pattern->uahash, (unsigned short)pattern->flags);

  output += length;
  *output-- = 0;
  for (p = v; p->parent != 0; p = p->parent) {
    *output-- = p->p_ch;
  }
  return TRUE;
}