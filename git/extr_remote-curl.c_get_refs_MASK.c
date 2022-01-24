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
struct ref {int dummy; } ;
struct discovery {struct ref* refs; } ;

/* Variables and functions */
 struct discovery* FUNC0 (char*,int) ; 

__attribute__((used)) static struct ref *FUNC1(int for_push)
{
	struct discovery *heads;

	if (for_push)
		heads = FUNC0("git-receive-pack", for_push);
	else
		heads = FUNC0("git-upload-pack", for_push);

	return heads->refs;
}