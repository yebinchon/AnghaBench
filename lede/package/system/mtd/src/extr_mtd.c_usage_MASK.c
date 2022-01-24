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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ mtd_fixseama ; 
 scalar_t__ mtd_fixtrx ; 
 scalar_t__ mtd_fixwrg ; 
 scalar_t__ mtd_fixwrgg ; 
 scalar_t__ mtd_resetbc ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(stderr, "Usage: mtd [<options> ...] <command> [<arguments> ...] <device>[:<device>...]\n\n"
	"The device is in the format of mtdX (eg: mtd4) or its label.\n"
	"mtd recognizes these commands:\n"
	"        unlock                  unlock the device\n"
	"        refresh                 refresh mtd partition\n"
	"        erase                   erase all data on device\n"
	"        verify <imagefile>|-    verify <imagefile> (use - for stdin) to device\n"
	"        write <imagefile>|-     write <imagefile> (use - for stdin) to device\n"
	"        jffs2write <file>       append <file> to the jffs2 partition on the device\n");
	if (mtd_resetbc) {
	    FUNC1(stderr,
	"        resetbc <device>        reset the uboot boot counter\n");
	}
	if (mtd_fixtrx) {
	    FUNC1(stderr,
	"        fixtrx                  fix the checksum in a trx header on first boot\n");
	}
	if (mtd_fixseama) {
	    FUNC1(stderr,
	"        fixseama                fix the checksum in a seama header on first boot\n");
	}
	if (mtd_fixwrg) {
	    FUNC1(stderr,
	"        fixwrg                  fix the checksum in a wrg header on first boot\n");
	}
	if (mtd_fixwrgg) {
	    FUNC1(stderr,
	"        fixwrgg                 fix the checksum in a wrgg header on first boot\n");
	}
	FUNC1(stderr,
	"Following options are available:\n"
	"        -q                      quiet mode (once: no [w] on writing,\n"
	"                                           twice: no status messages)\n"
	"        -n                      write without first erasing the blocks\n"
	"        -r                      reboot after successful command\n"
	"        -f                      force write without trx checks\n"
	"        -e <device>             erase <device> before executing the command\n"
	"        -d <name>               directory for jffs2write, defaults to \"tmp\"\n"
	"        -j <name>               integrate <file> into jffs2 data when writing an image\n"
	"        -s <number>             skip the first n bytes when appending data to the jffs2 partiton, defaults to \"0\"\n"
	"        -p <number>             write beginning at partition offset\n"
	"        -l <length>             the length of data that we want to dump\n");
	if (mtd_fixtrx) {
	    FUNC1(stderr,
	"        -o offset               offset of the image header in the partition(for fixtrx)\n");
	}
	if (mtd_fixtrx || mtd_fixseama || mtd_fixwrg || mtd_fixwrgg) {
		FUNC1(stderr,
	"        -c datasize             amount of data to be used for checksum calculation (for fixtrx / fixseama / fixwrg / fixwrgg)\n");
	}
	FUNC1(stderr,
#ifdef FIS_SUPPORT
	"        -F <part>[:<size>[:<entrypoint>]][,<part>...]\n"
	"                                alter the fis partition table to create new partitions replacing\n"
	"                                the partitions provided as argument to the write command\n"
	"                                (only valid together with the write command)\n"
#endif
	"\n"
	"Example: To write linux.trx to mtd4 labeled as linux and reboot afterwards\n"
	"         mtd -r write linux.trx linux\n\n");
	FUNC0(1);
}