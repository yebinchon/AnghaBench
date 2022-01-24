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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_4__ {int state_count; TYPE_1__* states; } ;
struct powernow_k8_data {TYPE_2__ acpi_data; scalar_t__ exttype; } ;
struct cpufreq_frequency_table {int driver_data; int frequency; } ;
struct TYPE_3__ {int status; int control; int core_frequency; } ;

/* Variables and functions */
 int EXT_FID_MASK ; 
 int EXT_VID_MASK ; 
 int FID_MASK ; 
 int MAX_FREQ ; 
 int MIN_FREQ ; 
 int VID_MASK ; 
 int VID_OFF ; 
 int VID_SHIFT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_frequency_table*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct powernow_k8_data *data,
		struct cpufreq_frequency_table *powernow_table)
{
	int i;

	for (i = 0; i < data->acpi_data.state_count; i++) {
		u32 fid;
		u32 vid;
		u32 freq, index;
		u64 status, control;

		if (data->exttype) {
			status =  data->acpi_data.states[i].status;
			fid = status & EXT_FID_MASK;
			vid = (status >> VID_SHIFT) & EXT_VID_MASK;
		} else {
			control =  data->acpi_data.states[i].control;
			fid = control & FID_MASK;
			vid = (control >> VID_SHIFT) & VID_MASK;
		}

		FUNC2("   %d : fid 0x%x, vid 0x%x\n", i, fid, vid);

		index = fid | (vid<<8);
		powernow_table[i].driver_data = index;

		freq = FUNC0(fid);
		powernow_table[i].frequency = freq;

		/* verify frequency is OK */
		if ((freq > (MAX_FREQ * 1000)) || (freq < (MIN_FREQ * 1000))) {
			FUNC2("invalid freq %u kHz, ignoring\n", freq);
			FUNC1(powernow_table, i);
			continue;
		}

		/* verify voltage is OK -
		 * BIOSs are using "off" to indicate invalid */
		if (vid == VID_OFF) {
			FUNC2("invalid vid %u, ignoring\n", vid);
			FUNC1(powernow_table, i);
			continue;
		}

		if (freq != (data->acpi_data.states[i].core_frequency * 1000)) {
			FUNC3("invalid freq entries %u kHz vs. %u kHz\n",
				freq, (unsigned int)
				(data->acpi_data.states[i].core_frequency
				 * 1000));
			FUNC1(powernow_table, i);
			continue;
		}
	}
	return 0;
}