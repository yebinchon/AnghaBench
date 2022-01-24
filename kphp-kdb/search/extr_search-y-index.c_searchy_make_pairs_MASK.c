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
struct TYPE_3__ {int /*<<< orphan*/  position; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_WORDS ; 
 TYPE_1__* Q ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,int*) ; 
 int /*<<< orphan*/  tag_owner ; 
 int /*<<< orphan*/  universal ; 

__attribute__((used)) static void FUNC2 (const char *text, int len, int doc_id, long long item_id, int *positions) {
  int i, Qw = FUNC1 (text, len, Q, MAX_WORDS, universal, tag_owner, item_id, positions);
  for (i = 0; i < Qw; i++) {
    FUNC0 (doc_id, Q[i].word, Q[i].position);
  }
}