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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *arg0)
{
	FUNC1(stderr, "usage: %s -d|-e [-i FILE] [-o FILE]\n\n", arg0);
	FUNC1(stderr, "%-15s %s\n", "-d, --decrypt", "decrypt data");
	FUNC1(stderr, "%-15s %s\n", "-e, --encrypt", "encrypt data");
	FUNC1(stderr, "%-15s %s\n", "-i, --input", "intput file (defaults to stdin)");
	FUNC1(stderr, "%-15s %s\n", "-o, --output", "output file (defaults to stdout)");
	FUNC0(-1);
}