#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int error; scalar_t__ audio; } ;
typedef  TYPE_1__ tracktype ;
struct cdrom_device_ops {int (* drive_status ) (struct cdrom_device_info*,int /*<<< orphan*/ ) ;int (* tray_move ) (struct cdrom_device_info*,int /*<<< orphan*/ ) ;} ;
struct cdrom_device_info {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_CLOSE_TRAY ; 
 int CDO_AUTO_CLOSE ; 
 int CDO_CHECK_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CDSL_CURRENT ; 
 int CDS_DISC_OK ; 
 int CDS_NO_DISC ; 
 int CDS_TRAY_OPEN ; 
 int /*<<< orphan*/  CD_OPEN ; 
 int EIO ; 
 int EMEDIUMTYPE ; 
 int ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cdrom_device_info*,TYPE_1__*) ; 
 int FUNC3 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cdrom_device_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cdrom_device_info *cdi,
				const struct cdrom_device_ops *cdo)
{
        int ret;
	tracktype tracks;
	FUNC1(CD_OPEN, "entering check_for_audio_disc\n");
	if (!(cdi->options & CDO_CHECK_TYPE))
		return 0;
	if (cdo->drive_status != NULL) {
		ret = cdo->drive_status(cdi, CDSL_CURRENT);
		FUNC1(CD_OPEN, "drive_status=%d\n", ret);
		if (ret == CDS_TRAY_OPEN) {
			FUNC1(CD_OPEN, "the tray is open...\n");
			/* can/may i close it? */
			if (FUNC0(CDC_CLOSE_TRAY) &&
			    cdi->options & CDO_AUTO_CLOSE) {
				FUNC1(CD_OPEN, "trying to close the tray\n");
				ret=cdo->tray_move(cdi,0);
				if (ret) {
					FUNC1(CD_OPEN, "bummer. tried to close tray but failed.\n");
					/* Ignore the error from the low
					level driver.  We don't care why it
					couldn't close the tray.  We only care 
					that there is no disc in the drive, 
					since that is the _REAL_ problem here.*/
					return -ENOMEDIUM;
				}
			} else {
				FUNC1(CD_OPEN, "bummer. this driver can't close the tray.\n");
				return -ENOMEDIUM;
			}
			/* Ok, the door should be closed now.. Check again */
			ret = cdo->drive_status(cdi, CDSL_CURRENT);
			if ((ret == CDS_NO_DISC) || (ret==CDS_TRAY_OPEN)) {
				FUNC1(CD_OPEN, "bummer. the tray is still not closed.\n");
				return -ENOMEDIUM;
			}	
			if (ret!=CDS_DISC_OK) {
				FUNC1(CD_OPEN, "bummer. disc isn't ready.\n");
				return -EIO;
			}	
			FUNC1(CD_OPEN, "the tray is now closed\n");
		}	
	}
	FUNC2(cdi, &tracks);
	if (tracks.error) 
		return(tracks.error);

	if (tracks.audio==0)
		return -EMEDIUMTYPE;

	return 0;
}