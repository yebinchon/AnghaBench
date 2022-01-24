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
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  POLARIZATION_HRZ 131 
#define  POLARIZATION_VH 130 
#define  POLARIZATION_VL 129 
#define  POLARIZATION_VM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  smp_cpu_state_mutex ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	int cpu = dev->id;
	ssize_t count;

	FUNC0(&smp_cpu_state_mutex);
	switch (FUNC2(cpu)) {
	case POLARIZATION_HRZ:
		count = FUNC3(buf, "horizontal\n");
		break;
	case POLARIZATION_VL:
		count = FUNC3(buf, "vertical:low\n");
		break;
	case POLARIZATION_VM:
		count = FUNC3(buf, "vertical:medium\n");
		break;
	case POLARIZATION_VH:
		count = FUNC3(buf, "vertical:high\n");
		break;
	default:
		count = FUNC3(buf, "unknown\n");
		break;
	}
	FUNC1(&smp_cpu_state_mutex);
	return count;
}