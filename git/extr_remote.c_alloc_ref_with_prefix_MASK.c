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
struct ref {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t,size_t,int) ; 
 size_t FUNC2 (char const*) ; 
 struct ref* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ref *FUNC4(const char *prefix, size_t prefixlen,
		const char *name)
{
	size_t len = FUNC2(name);
	struct ref *ref = FUNC3(1, FUNC1(sizeof(*ref), prefixlen, len, 1));
	FUNC0(ref->name, prefix, prefixlen);
	FUNC0(ref->name + prefixlen, name, len);
	return ref;
}