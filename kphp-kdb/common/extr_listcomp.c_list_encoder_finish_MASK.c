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
struct list_encoder {int tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct list_encoder*) ; 
#define  le_degenerate 131 
#define  le_golomb 130 
#define  le_interpolative 129 
#define  le_llrun 128 
 int /*<<< orphan*/  FUNC2 (struct list_encoder*) ; 

void FUNC3 (struct list_encoder *enc) {
  switch (enc->tp) {
  case le_golomb:
  case le_degenerate:
    break;
  case le_interpolative:
    FUNC1 (enc);
    break;
  case le_llrun:
    FUNC2 (enc);
    break;
  default:
    FUNC0 (0);
  }
}