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
struct discovery {scalar_t__ proto_git; } ;

/* Variables and functions */
 struct discovery* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct ref**) ; 
 int FUNC2 (struct discovery*,int,struct ref**) ; 

__attribute__((used)) static int FUNC3(int nr_heads, struct ref **to_fetch)
{
	struct discovery *d = FUNC0("git-upload-pack", 0);
	if (d->proto_git)
		return FUNC2(d, nr_heads, to_fetch);
	else
		return FUNC1(nr_heads, to_fetch);
}