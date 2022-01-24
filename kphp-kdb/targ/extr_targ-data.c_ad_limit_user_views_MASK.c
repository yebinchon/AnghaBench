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
struct lev_generic {int a; int type; } ;
struct advert {scalar_t__ price; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_LIMIT_VIEWS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct advert* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct advert*) ; 

__attribute__((used)) static int FUNC4 (struct lev_generic *E) {
  int ad_id = E->a;
  int views = E->type & 0xffff;
  FUNC1 (!views || views == 100);
  struct advert *A = FUNC2 (ad_id, FUNC0 (ad_id));
  if (!A) { 
    return -1; 
  }

  FUNC1 (FUNC3 (A) >= 0);
  FUNC1 (A->price < 0);

  if (!views) {
    A->flags &= ~ADF_LIMIT_VIEWS;
  } else {
    A->flags |= ADF_LIMIT_VIEWS;
  }

  return 1;
}