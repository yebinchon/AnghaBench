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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC1(
		"attr/.gitignore",
		"*/onestar\n"
		"**/twostars\n"
		"*/parent1/kid1/*\n"
		"**/parent2/kid2/*\n");

	FUNC0(true, "dir1/onestar");
	FUNC0(true, "dir1/onestar/child"); /* in ignored dir */
	FUNC0(false, "dir1/dir2/onestar");

	FUNC0(true, "dir1/twostars");
	FUNC0(true, "dir1/twostars/child"); /* in ignored dir */
	FUNC0(true, "dir1/dir2/twostars");
	FUNC0(true, "dir1/dir2/twostars/child"); /* in ignored dir */
	FUNC0(true, "dir1/dir2/dir3/twostars");

	FUNC0(true, "dir1/parent1/kid1/file");
	FUNC0(true, "dir1/parent1/kid1/file/inside/parent");
	FUNC0(false, "dir1/dir2/parent1/kid1/file");
	FUNC0(false, "dir1/parent1/file");
	FUNC0(false, "dir1/kid1/file");

	FUNC0(true, "dir1/parent2/kid2/file");
	FUNC0(true, "dir1/parent2/kid2/file/inside/parent");
	FUNC0(true, "dir1/dir2/parent2/kid2/file");
	FUNC0(true, "dir1/dir2/dir3/parent2/kid2/file");
	FUNC0(false, "dir1/parent2/file");
	FUNC0(false, "dir1/kid2/file");
}