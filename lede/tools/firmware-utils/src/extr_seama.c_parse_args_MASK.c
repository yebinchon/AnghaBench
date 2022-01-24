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
 int /*<<< orphan*/  MAX_IMAGE ; 
 int /*<<< orphan*/  MAX_META ; 
 int FUNC0 (int,char**,char*) ; 
 void* o_dump ; 
 void* o_extract ; 
 void** o_images ; 
 int /*<<< orphan*/  o_isize ; 
 void** o_meta ; 
 int /*<<< orphan*/  o_msize ; 
 void* o_seal ; 
 int /*<<< orphan*/  o_verbose ; 
 void* optarg ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int argc, char * argv[])
{
	int opt;

	while ((opt = FUNC0(argc, argv, "hvd:s:i:m:x:")) > 0)
	{
		switch (opt)
		{
		default:	FUNC2(-1); break;
		case 'h':	FUNC2(0); break;
		case 'v':	o_verbose++; break;
		case 'd':	o_dump = optarg; break;
		case 's':	o_seal = optarg; break;
		case 'x':	o_extract = optarg; break;
		case 'i':
			if (o_isize < MAX_IMAGE) o_images[o_isize++] = optarg;
			else FUNC1("Exceed the maximum acceptable image files.!\n");
			break;
		case 'm':
			if (o_msize < MAX_META) o_meta[o_msize++] = optarg;
			else FUNC1("Exceed the maximum acceptable META data.!\n");
			break;
		}
	}
	return 0;
}