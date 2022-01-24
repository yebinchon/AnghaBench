#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xzProps; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  CXzProps ;
typedef  scalar_t__ CXzEncHandle ;
typedef  TYPE_1__ CXzEnc ;

/* Variables and functions */
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

SRes FUNC1(CXzEncHandle pp, const CXzProps *props)
{
  CXzEnc *p = (CXzEnc *)pp;
  p->xzProps = *props;
  FUNC0(&p->xzProps);
  return SZ_OK;
}