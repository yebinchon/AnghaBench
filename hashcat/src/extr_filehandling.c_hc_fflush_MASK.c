#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pfp; scalar_t__ is_zip; int /*<<< orphan*/  gfp; scalar_t__ is_gzip; } ;
typedef  TYPE_1__ HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (HCFILE *fp)
{
  if (fp == NULL) return;

  if (fp->is_gzip)
  {
    FUNC1 (fp->gfp, Z_SYNC_FLUSH);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    FUNC0 (fp->pfp);
  }
}