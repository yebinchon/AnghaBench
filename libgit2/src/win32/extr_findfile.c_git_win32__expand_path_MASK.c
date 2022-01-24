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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ _findfile_path ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(_findfile_path *dest, const wchar_t *src)
{
	dest->len = FUNC1(src, dest->path, FUNC0(dest->path));

	if (!dest->len || dest->len > FUNC0(dest->path))
		return -1;

	return 0;
}