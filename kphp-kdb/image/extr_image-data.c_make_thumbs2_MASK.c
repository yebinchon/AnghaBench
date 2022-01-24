#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct thumb2 {int computed; int /*<<< orphan*/  filename; int /*<<< orphan*/  quality; } ;
struct forth_stack {int dummy; } ;
struct TYPE_16__ {int columns; int rows; } ;
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ RectangleInfo ;
typedef  TYPE_2__ Image ;
typedef  int /*<<< orphan*/  FilterTypes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FORTH_PASS ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int THUMB2_CROP_MASK ; 
 int THUMB2_RESIZE_MASK ; 
 void* FUNC2 (struct forth_stack*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int const,int const,struct thumb2*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_2__* FUNC4 (struct forth_stack*,TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC5 (struct forth_stack*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (struct forth_stack*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC7 (Image *r, struct thumb2 *u, struct forth_stack *st, const FilterTypes resize_filter, const int quality) {
  const int width = r->columns, height = r->rows;
  RectangleInfo resize_rect, crop_rect;
  int res = FUNC3 (width, height, u, &resize_rect, &crop_rect);
  Image *w = FUNC1 (r);

  if (res & THUMB2_RESIZE_MASK) {
    Image *v = FUNC5 (st, w, resize_rect.width, resize_rect.height, 0, resize_filter);
    if (v == NULL) {
      FUNC0 (w);
      return FUNC2 (st, "GENERATE_THUMBS2: gm_resize_image fail. %s", u->filename);
    }
    FUNC0 (w);
    w = v;
  }

  if (res & THUMB2_CROP_MASK) {
    Image *v = FUNC4 (st, w, &crop_rect);
    if (v == NULL) {
      FUNC0 (w);
      return FUNC2 (st, "GENERATE_THUMBS2: gm_crop_image fail. %s", u->filename);
    }
    FUNC0 (w);
    w = v;
  }

  if (FUNC6 (st, w, u->filename, u->quality) < 0) {
    FUNC0 (w);
    return FUNC2 (st, "GENERATE_THUMBS2: write_image fail. %s", u->filename);
  }

  FUNC0 (w);
  u->computed = 1;
  return FORTH_PASS;
}