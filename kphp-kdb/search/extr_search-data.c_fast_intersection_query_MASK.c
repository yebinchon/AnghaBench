#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cur_y; scalar_t__ cur; } ;
typedef  TYPE_1__ iheap_en_t ;

/* Variables and functions */
 TYPE_1__* IHE ; 
 int MAX_PRIORITY ; 
 int /*<<< orphan*/ * QT ; 
 int /*<<< orphan*/ * QW ; 
 int Q_min_priority ; 
 int Q_words ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4 (void) {
  int i;
  for (i = 0; i < Q_words; i++) {
    if (!FUNC1 (IHE+i, QW[i], QT[i], 0)) {
      return;
    }
  }
  if (Q_min_priority) {
    Q_min_priority = Q_words;
    if (Q_min_priority > MAX_PRIORITY) {
      Q_min_priority = MAX_PRIORITY;
    }
  }

  if (Q_words == 1) {
    iheap_en_t *H = IHE;
    if (Q_min_priority) {
      while (H->cur) {
        if (H->cur_y & 1) {
          if (!FUNC3 (H->cur, 1)) { break; }
        }
        FUNC0 (H);
      }
    } else {
      while (H->cur) {
        if (!FUNC3 (H->cur, H->cur_y & 1)) { break; }
        FUNC0 (H);
      }
    }
  } else {
    FUNC2 ();
  }
}