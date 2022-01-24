#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_15__ {TYPE_1__ bytes; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
typedef  TYPE_3__ sl_value ;
typedef  int /*<<< orphan*/  sl_symboltab ;
typedef  int /*<<< orphan*/  sl_iter ;
typedef  int /*<<< orphan*/  cf_chash_ctx ;
struct TYPE_17__ {scalar_t__ ctxsz; int hashsz; int /*<<< orphan*/  (* digest ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ cf_chash ;

/* Variables and functions */
 scalar_t__ CF_CHASH_MAXCTX ; 
 int CF_MAXHASH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  sl_assert_bytes ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sl_preprocess_eval ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static sl_value * FUNC9(sl_value *self, sl_value *args, sl_symboltab *tab, const cf_chash *h)
{
  sl_iter it = FUNC4(args);
  sl_value *msg = FUNC3(&it, sl_preprocess_eval, sl_assert_bytes, tab);

  if (!msg)
    return FUNC2();

  cf_chash_ctx ctx;
  FUNC0(h->ctxsz <= CF_CHASH_MAXCTX);
  h->init(&ctx);
  h->update(&ctx, msg->u.bytes.buf, msg->u.bytes.len);
  FUNC1(msg);

  uint8_t result[CF_MAXHASH];
  FUNC0(h->hashsz <= CF_MAXHASH);
  h->digest(&ctx, result);

  return FUNC5(result, h->hashsz);
}