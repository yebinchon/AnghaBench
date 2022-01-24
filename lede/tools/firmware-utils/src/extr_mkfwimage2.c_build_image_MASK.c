#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  signature_t ;
typedef  int /*<<< orphan*/  part_t ;
struct TYPE_5__ {scalar_t__ st_size; } ;
struct TYPE_6__ {TYPE_1__ stats; int /*<<< orphan*/  partition_name; } ;
typedef  TYPE_2__ part_data_t ;
typedef  int /*<<< orphan*/  part_crc_t ;
typedef  int /*<<< orphan*/  header_t ;
struct TYPE_7__ {int part_count; int /*<<< orphan*/  outputfile; TYPE_2__* parts; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 TYPE_4__ im ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	char* mem;
	char* ptr;
	u_int32_t mem_size;
	FILE* f;
	int i;

	/* build in-memory buffer */
	mem_size = sizeof(header_t) + sizeof(signature_t);
	for (i = 0; i < im.part_count; ++i) {
		part_data_t* d = &im.parts[i];
		mem_size += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
	}

	mem = (char*)FUNC1(mem_size, 1);
	if (mem == NULL) {
		FUNC0("Cannot allocate memory chunk of size '%u'\n", mem_size);
		return -1;
	}

	/* write header */
	FUNC6(mem, im.version);
	ptr = mem + sizeof(header_t);

	/* write all parts */
	for (i = 0; i < im.part_count; ++i) {
		part_data_t* d = &im.parts[i];
		int rc;
		if ((rc = FUNC7(ptr, d)) != 0) {
			FUNC0("ERROR: failed writing part %u '%s'\n", i, d->partition_name);
			return -1;
		}
		ptr += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
	}


	/* write signature */
	FUNC8(mem, mem_size - sizeof(signature_t));

	/* write in-memory buffer into file */
	if ((f = FUNC3(im.outputfile, "w")) == NULL) {
		FUNC0("Can not create output file: '%s'\n", im.outputfile);
		return -10;
	}

	if (FUNC5(mem, mem_size, 1, f) != 1) {
		FUNC0("Could not write %d bytes into file: '%s'\n",
				mem_size, im.outputfile);
		return -11;
	}

	FUNC4(mem);
	FUNC2(f);
	return 0;
}