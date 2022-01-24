#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  e_Y0; int /*<<< orphan*/  gh; } ;
typedef  TYPE_1__ uint8_t ;
typedef  TYPE_1__ cf_gcm_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 

void FUNC4(cf_gcm_ctx *gcmctx, uint8_t *tag, size_t ntag)
{
  /* Post-process ghash output */
  uint8_t full_tag[16] = { 0 };
  FUNC1(&gcmctx->gh, full_tag);
  
  FUNC0(ntag > 1 && ntag <= 16);
  FUNC3(tag, full_tag, gcmctx->e_Y0, ntag);

  FUNC2(full_tag, sizeof full_tag);
  FUNC2(gcmctx, sizeof *gcmctx);
}