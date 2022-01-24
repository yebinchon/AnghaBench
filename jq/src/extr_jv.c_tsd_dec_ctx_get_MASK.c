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
typedef  int /*<<< orphan*/  pthread_key_t ;
struct TYPE_5__ {int /*<<< orphan*/  digits; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ decContext ;

/* Variables and functions */
 int /*<<< orphan*/  BIN64_DEC_PRECISION ; 
 int /*<<< orphan*/  DEC_MAX_DIGITS ; 
 int /*<<< orphan*/  DEC_MAX_EMAX ; 
 int /*<<< orphan*/  DEC_MIN_EMAX ; 
 int /*<<< orphan*/  DEC_ROUND_HALF_UP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dec_ctx_dbl_key ; 
 int /*<<< orphan*/  dec_ctx_key ; 
 int /*<<< orphan*/  dec_ctx_once ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tsd_dec_ctx_init ; 

__attribute__((used)) static decContext* FUNC6(pthread_key_t *key) {
  FUNC4(&dec_ctx_once, tsd_dec_ctx_init); // cannot fail
  decContext *ctx = (decContext*)FUNC3(*key);
  if (ctx) {
    return ctx;
  }

  decContext _ctx = {
      0,
      DEC_MAX_EMAX,
      DEC_MIN_EMAX,
      DEC_ROUND_HALF_UP,
      0, /*no errors*/
      0, /*status*/
      0, /*no clamping*/
    };
  if (key == &dec_ctx_key) {
    _ctx.digits = DEC_MAX_DIGITS;
  } else if (key == &dec_ctx_dbl_key) {
    _ctx.digits = BIN64_DEC_PRECISION;
  }

  ctx = FUNC2(sizeof(decContext));
  if (ctx) {
    *ctx = _ctx;
    if (FUNC5(*key, ctx) != 0) {
      FUNC1(stderr, "error: cannot store thread specific data");
      FUNC0();
    }
  }
  return ctx;
}