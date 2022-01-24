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
struct kvm {int dummy; } ;
typedef  int hpa_t ;
typedef  int /*<<< orphan*/  gpa_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm *kvm, gpa_t gpa, hpa_t hpa)
{
	FUNC1(hpa >> PAGE_SHIFT);
	/* mark the page always as dirty for migration */
	FUNC2(kvm, FUNC0(gpa));
}