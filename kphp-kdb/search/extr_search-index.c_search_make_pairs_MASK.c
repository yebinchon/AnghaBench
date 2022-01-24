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
struct TYPE_3__ {int /*<<< orphan*/  freqs; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_WORDS ; 
 TYPE_1__* Q ; 
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tag_owner ; 
 int /*<<< orphan*/  universal ; 

__attribute__((used)) static void FUNC2 (const char *text, int len, int doc_id, long long item_id) {
  int i, Qw = FUNC0 (text, len, universal, Q, MAX_WORDS, tag_owner, item_id);
  for (i = 0; i < Qw; i++) {
    FUNC1 (doc_id, Q[i].word, Q[i].freqs);
  }
}