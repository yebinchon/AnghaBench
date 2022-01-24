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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char** o_images ; 
 size_t o_isize ; 
 int /*<<< orphan*/  o_meta ; 
 int /*<<< orphan*/  o_msize ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC11(void)
{
	FILE * fh;
	FILE * ifh;
	size_t i, fsize;
	char filename[512];
	uint8_t digest[16];

	for (i=0; i<o_isize; i++)
	{
		/* Open the input file. */
		ifh = FUNC3(o_images[i], "r+");
		if (ifh)
		{
			fsize = FUNC0(ifh, 0, digest);
			FUNC7("file size (%s) : %d\n", o_images[i], fsize);
			FUNC5(ifh);

			/* Open the output file. */
			FUNC6(filename, "%s.seama", o_images[i]);
			fh = FUNC3(filename, "w+");
			if (fh)
			{
				FUNC10(fh, o_meta, o_msize, fsize);
				FUNC8(fh, digest);
				FUNC9(fh, o_meta, o_msize);
				FUNC1(fh, ifh);
				FUNC2(fh);
			}
			FUNC2(ifh);
		}
		else
		{
			FUNC4("Unable to open image file '%s'\n",o_images[i]);
		}
	}
}