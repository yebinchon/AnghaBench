#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ words; } ;
typedef  TYPE_1__ searchy_query_t ;
struct TYPE_8__ {int /*<<< orphan*/  words; int /*<<< orphan*/ * H; } ;
typedef  TYPE_2__ searchy_query_phrase_t ;
typedef  enum searchy_query_phrase_type { ____Placeholder_searchy_query_phrase_type } searchy_query_phrase_type ;

/* Variables and functions */
 scalar_t__ SEARCHY_MAX_QUERY_WORDS ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 

__attribute__((used)) static int FUNC3 (searchy_query_t *Q, const char *text, int len, enum searchy_query_phrase_type type, int minus) {
  if (Q->words >= SEARCHY_MAX_QUERY_WORDS) {
    FUNC1 (Q);
    return -1;
  }
  searchy_query_phrase_t *P = FUNC0 (Q, type, minus);
  P->H[P->words++] = FUNC2 (text, len);
  Q->words++;
  return 0;
}