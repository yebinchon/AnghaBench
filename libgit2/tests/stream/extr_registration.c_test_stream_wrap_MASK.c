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
typedef  char const git_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int ctor_called ; 
 char test_stream ; 

__attribute__((used)) static int FUNC1(git_stream **out, git_stream *in, const char *host)
{
	FUNC0(in);
	FUNC0(host);

	ctor_called = 1;
	*out = &test_stream;

	return 0;
}