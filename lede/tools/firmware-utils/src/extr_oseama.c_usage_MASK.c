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
	FUNC0("Info about Seama seal (container):\n");
	FUNC0("\toseama info <file> [options]\n");
	FUNC0("\t-e\t\t\t\tprint info about specified entity only\n");
	FUNC0("\n");
	FUNC0("Create Seama entity:\n");
	FUNC0("\toseama entity <file> [options]\n");
	FUNC0("\t-m meta\t\t\t\tmeta into to put in header\n");
	FUNC0("\t-f file\t\t\t\tappend content from file\n");
	FUNC0("\t-b offset\t\t\tappend zeros till reaching absolute offset\n");
	FUNC0("\n");
	FUNC0("Extract from Seama seal (container):\n");
	FUNC0("\toseama extract <file> [options]\n");
	FUNC0("\t-e\t\t\t\tindex of entity to extract\n");
	FUNC0("\t-o file\t\t\t\toutput file\n");
}