#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cf_chash_ctx ;
struct TYPE_4__ {int /*<<< orphan*/  (* digest ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update ) (int /*<<< orphan*/ *,void const*,size_t) ;int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ cf_chash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(const cf_chash *h, const void *m, size_t nm, uint8_t *out)
{
  cf_chash_ctx ctx;
  FUNC0(h);
  h->init(&ctx);
  h->update(&ctx, m, nm);
  h->digest(&ctx, out);
  FUNC1(&ctx, sizeof ctx);
}