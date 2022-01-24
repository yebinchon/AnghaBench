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
struct gkc_summary {int dummy; } ;

/* Variables and functions */
 struct gkc_summary* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gkc_summary*,double) ; 

struct gkc_summary *FUNC2(double epsilon)
{
    struct gkc_summary *s;
    s = FUNC0(1, sizeof(*s));
    FUNC1(s, epsilon);
    return s;
}