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

/* Variables and functions */
 int* I ; 
 int /*<<< orphan*/  adj_rec ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int last_date ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 size_t wc_app ; 
 size_t wc_comments ; 
 size_t wc_date ; 
 size_t wc_likes ; 
 size_t wc_owner ; 
 size_t wc_page ; 
 size_t wc_post ; 

void FUNC4 (void) {
  int likes = I[wc_likes];
  int comments = I[wc_comments];
  int app_id = I[wc_app];
  int date = I[wc_date];
  if (date < last_date) {
    FUNC1 (stderr, "date goes back by %d seconds\n", last_date - date);
  } else if (date > last_date) {
    FUNC2 (date);
    last_date = date;
  }
  if (!FUNC0 (app_id)) {
    return;
  }
  FUNC3 (app_id, I[wc_page], I[wc_owner], I[wc_post], likes, !!likes * 2 + !!comments);
  adj_rec++;
}