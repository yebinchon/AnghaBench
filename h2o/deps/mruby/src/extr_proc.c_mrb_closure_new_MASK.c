#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RProc {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct RProc*) ; 
 struct RProc* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct RProc*
FUNC2(mrb_state *mrb, mrb_irep *irep)
{
  struct RProc *p = FUNC1(mrb, irep);

  FUNC0(mrb, p);
  return p;
}