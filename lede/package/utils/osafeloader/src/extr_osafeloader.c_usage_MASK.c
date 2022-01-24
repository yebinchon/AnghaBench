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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1() {
	FUNC0("Usage:\n");
	FUNC0("\n");
	FUNC0("Info about SafeLoader:\n");
	FUNC0("\tosafeloader info <file>\n");
	FUNC0("\n");
	FUNC0("Extract from SafeLoader:\n");
	FUNC0("\tosafeloader extract <file> [options]\n");
	FUNC0("\t-p name\t\t\t\tname of partition to extract\n");
	FUNC0("\t-o file\t\t\t\toutput file\n");
}