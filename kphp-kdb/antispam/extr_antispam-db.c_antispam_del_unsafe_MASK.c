#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ patterns_cnt; scalar_t__ deg; scalar_t__ ch; struct TYPE_8__* next; int /*<<< orphan*/  p_ch; struct TYPE_8__* parent; } ;
typedef  TYPE_1__ trie_node_t ;
struct TYPE_9__ {TYPE_1__* trie_node; } ;
typedef  TYPE_2__ pattern_t ;
typedef  scalar_t__* list_pattern_link_t ;
typedef  int /*<<< orphan*/  hash_t ;
typedef  scalar_t__ byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_to_pattern ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  triple_to_pattern ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static inline void FUNC8 (int id, pattern_t* pattern) {
  trie_node_t *v = pattern->trie_node;
  --v->patterns_cnt;

  hash_t hash = FUNC0 (*pattern);
  list_pattern_link_t head = FUNC6 (triple_to_pattern, hash);
  FUNC1 (head && FUNC4 (head, pattern));
  if (*head == 0) {
    FUNC1 (FUNC5 (triple_to_pattern, hash));
  }
  FUNC1 (FUNC3 (id_to_pattern, id));

  while (v->parent != 0 && v->deg == 0 && v->patterns_cnt == 0) {
    trie_node_t *p = v->parent;
    *FUNC2 (p, v->p_ch) = 0;
    if (--p->deg == 1) {
      trie_node_t *tmp, **e = (trie_node_t **)p->next;
      byte i = 0;
      while (!*e) {
        e++;
        i++;
      }
      tmp = *e;
      FUNC7 (p->next, sizeof (trie_node_t *) * 256);
      p->next = tmp, p->ch = i;
    }
    FUNC7 (v, sizeof (trie_node_t));
    v = p;
  }
}