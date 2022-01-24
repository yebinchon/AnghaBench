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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 double INFINITY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 double FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC3(mrb_state *mrb, mrb_value str)
{
  const char *p = FUNC1(str);
  mrb_int len = FUNC0(str);

  /* `i`, `inf`, `infinity` */
  if (len > 0 && p[0] == 'i') return INFINITY;

  /* `I`, `-inf`, `-infinity` */
  if (p[0] == 'I' || (len > 1 && p[0] == '-' && p[1] == 'i')) return -INFINITY;

  return FUNC2(mrb, str, TRUE);
}