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
struct news_gather_extra {int /*<<< orphan*/  end_date; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  type_mask; } ;
struct gather {struct news_gather_extra* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  Q_size ; 
 int /*<<< orphan*/  TL_CNEWS_GET_RAW_USER_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1 (struct gather *G, int num) {
  struct news_gather_extra *extra = G->extra;
  FUNC0 (TL_CNEWS_GET_RAW_USER_UPDATES);  
  FUNC0 (extra->type_mask);;
  FUNC0 (extra->timestamp);
  FUNC0 (extra->end_date);
  FUNC0 (Q_size);
  return 0;
}