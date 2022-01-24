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
struct TYPE_3__ {int /*<<< orphan*/  pfp; int /*<<< orphan*/  ufp; scalar_t__ is_zip; int /*<<< orphan*/  gfp; scalar_t__ is_gzip; } ;
typedef  TYPE_1__ HCFILE ;

/* Variables and functions */
 char* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

char *FUNC3 (char *buf, int len, HCFILE *fp)
{
  char *r = NULL;

  if (fp == NULL) return r;

  if (fp->is_gzip)
  {
    r = FUNC1 (fp->gfp, buf, len);
  }
  else if (fp->is_zip)
  {
    if (FUNC2 (fp->ufp, buf, len) > 0) r = buf;
  }
  else
  {
    r = FUNC0 (buf, len, fp->pfp);
  }

  return r;
}