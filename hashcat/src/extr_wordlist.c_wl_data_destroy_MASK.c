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
struct TYPE_5__ {int enabled; int iconv_enabled; int /*<<< orphan*/  iconv_tmp; int /*<<< orphan*/  iconv_ctx; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ wl_data_t ;
struct TYPE_6__ {TYPE_1__* wl_data; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  wl_data_t *wl_data = hashcat_ctx->wl_data;

  if (wl_data->enabled == false) return;

  FUNC0 (wl_data->buf);

  if (wl_data->iconv_enabled == true)
  {
    FUNC1 (wl_data->iconv_ctx);

    wl_data->iconv_enabled = false;

    FUNC0 (wl_data->iconv_tmp);
  }

  FUNC2 (wl_data, 0, sizeof (wl_data_t));
}