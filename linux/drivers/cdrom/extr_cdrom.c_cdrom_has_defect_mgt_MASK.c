#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct packet_command {int* cmd; int quiet; } ;
struct feature_header {int dummy; } ;
struct cdrom_device_info {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;

/* Variables and functions */
 scalar_t__ CDF_HWDM ; 
 int /*<<< orphan*/  CGC_DATA_READ ; 
 int GPCMD_GET_CONFIGURATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_command*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cdrom_device_info*,struct packet_command*) ; 

__attribute__((used)) static int FUNC3(struct cdrom_device_info *cdi)
{
	struct packet_command cgc;
	char buffer[16];
	__be16 *feature_code;
	int ret;

	FUNC1(&cgc, buffer, sizeof(buffer), CGC_DATA_READ);

	cgc.cmd[0] = GPCMD_GET_CONFIGURATION;
	cgc.cmd[3] = CDF_HWDM;
	cgc.cmd[8] = sizeof(buffer);
	cgc.quiet = 1;

	if ((ret = cdi->ops->generic_packet(cdi, &cgc)))
		return ret;

	feature_code = (__be16 *) &buffer[sizeof(struct feature_header)];
	if (FUNC0(*feature_code) == CDF_HWDM)
		return 0;

	return 1;
}