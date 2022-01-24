#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  signature_t ;
typedef  int /*<<< orphan*/  signature_rsa_t ;
typedef  int /*<<< orphan*/  part_t ;
struct TYPE_7__ {scalar_t__ st_size; } ;
struct TYPE_9__ {TYPE_1__ stats; int /*<<< orphan*/  partition_name; } ;
typedef  TYPE_3__ part_data_t ;
typedef  int /*<<< orphan*/  part_crc_t ;
struct TYPE_10__ {int part_count; int /*<<< orphan*/  outputfile; TYPE_2__* fwinfo; TYPE_3__* parts; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  TYPE_4__ image_info_t ;
typedef  int /*<<< orphan*/  header_t ;
struct TYPE_8__ {scalar_t__ sign; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int FUNC10(image_info_t* im)
{
	char* mem;
	char* ptr;
	u_int32_t mem_size;
	FILE* f;
	int i;

	// build in-memory buffer
	mem_size = sizeof(header_t);
	if(im->fwinfo->sign) {
		mem_size += sizeof(signature_rsa_t);
	} else {
		mem_size += sizeof(signature_t);
	}
	for (i = 0; i < im->part_count; ++i)
	{
		part_data_t* d = &im->parts[i];
		mem_size += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
	}

	mem = (char*)FUNC1(mem_size, 1);
	if (mem == NULL)
	{
		FUNC0("Cannot allocate memory chunk of size '%u'\n", mem_size);
		return -1;
	}

	// write header
	FUNC6(mem, im->magic, im->version);
	ptr = mem + sizeof(header_t);
	// write all parts
	for (i = 0; i < im->part_count; ++i)
	{
		part_data_t* d = &im->parts[i];
		int rc;
		if ((rc = FUNC7(ptr, d)) != 0)
		{
			FUNC0("ERROR: failed writing part %u '%s'\n", i, d->partition_name);
		}
		ptr += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
	}
	// write signature
	if(im->fwinfo->sign) {
		FUNC9(mem, mem_size - sizeof(signature_rsa_t));
	} else {
		FUNC8(mem, mem_size - sizeof(signature_t));
	}

	// write in-memory buffer into file
	if ((f = FUNC3(im->outputfile, "w")) == NULL)
	{
		FUNC0("Can not create output file: '%s'\n", im->outputfile);
		return -10;
	}

	if (FUNC5(mem, mem_size, 1, f) != 1)
	{
		FUNC0("Could not write %d bytes into file: '%s'\n",
				mem_size, im->outputfile);
		return -11;
	}

	FUNC4(mem);
	FUNC2(f);
	return 0;
}