#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* cpt_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {scalar_t__ cpt_total; } ;
typedef  TYPE_2__ cpt_ctx_t ;

/* Variables and functions */
 double FUNC0 (TYPE_1__ const*) ; 

int FUNC1 (const hashcat_ctx_t *hashcat_ctx)
{
  const cpt_ctx_t *cpt_ctx = hashcat_ctx->cpt_ctx;

  const double msec_real = FUNC0 (hashcat_ctx);

  const double cpt_avg_day = (double) cpt_ctx->cpt_total / ((msec_real / 1000) / 86400);

  return (int) cpt_avg_day;
}