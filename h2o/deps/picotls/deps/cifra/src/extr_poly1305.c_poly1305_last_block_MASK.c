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
typedef  int uint32_t ;
struct TYPE_4__ {size_t npartial; int* partial; } ;
typedef  TYPE_1__ cf_poly1305 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC1(cf_poly1305 *ctx)
{
  uint32_t c[17] = { 0 };
  size_t i;

  for (i = 0; i < ctx->npartial; i++)
    c[i] = ctx->partial[i];

  c[ctx->npartial] = 1;
  FUNC0(ctx, c);
}