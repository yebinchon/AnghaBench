#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {char* cmdline; int cmdline_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  fixups; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PIR ; 
 int USERDATA_LEN ; 
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ibm44x_dbcr_reset ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  ibm_akebono_fixups ; 
 int ibm_akebono_memsize ; 
 TYPE_2__ loader_info ; 
 int /*<<< orphan*/  mac_addr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,unsigned long,int,int) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char**,int) ; 
 int timebase_period_ns ; 

void FUNC14(char *userdata)
{
	unsigned long end_of_ram, avail_ram;
	u32 pir_reg;
	int node, size;
	const u32 *timebase;
	int len, i, userdata_len;
	char *end;

	userdata[USERDATA_LEN - 1] = '\0';
	userdata_len = FUNC11(userdata);
	for (i = 0; i < userdata_len - 15; i++) {
		if (FUNC12(&userdata[i], "local-mac-addr=", 15) == 0) {
			if (i > 0 && userdata[i - 1] != ' ') {
				/* We've only found a substring ending
				 * with local-mac-addr so this isn't
				 * our mac address. */
				continue;
			}

			mac_addr = FUNC13(&userdata[i + 15], &end, 16);

			/* Remove the "local-mac-addr=<...>" from the kernel
			 * command line, including the tailing space if
			 * present. */
			if (*end == ' ')
				end++;

			len = ((int) end) - ((int) &userdata[i]);
			FUNC7(&userdata[i], end,
				userdata_len - (len + i) + 1);
			break;
		}
	}

	loader_info.cmdline = userdata;
	loader_info.cmdline_len = 256;

	ibm_akebono_memsize = FUNC6();
	if (ibm_akebono_memsize >> 32)
		end_of_ram = ~0UL;
	else
		end_of_ram = ibm_akebono_memsize;
	avail_ram = end_of_ram - (unsigned long)_end;

	FUNC10(_end, avail_ram, 128, 64);
	platform_ops.fixups = ibm_akebono_fixups;
	platform_ops.exit = ibm44x_dbcr_reset;
	pir_reg = FUNC8(SPRN_PIR);

	/* Make sure FDT blob is sane */
	if (FUNC1(_dtb_start) != 0)
		FUNC0("Invalid device tree blob\n");

	node = FUNC4(_dtb_start, -1, "device_type",
					     "cpu", sizeof("cpu"));
	if (!node)
		FUNC0("Cannot find cpu node\n");
	timebase = FUNC2(_dtb_start, node, "timebase-frequency", &size);
	if (timebase && (size == 4))
		timebase_period_ns = 1000000000 / *timebase;

	FUNC5(_dtb_start, pir_reg);
	FUNC3(_dtb_start);

	FUNC9();
}