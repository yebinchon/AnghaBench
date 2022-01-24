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
struct simdisk {unsigned long size; int /*<<< orphan*/  lock; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 unsigned long SECTOR_SHIFT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct simdisk *dev, unsigned long sector,
		unsigned long nsect, char *buffer, int write)
{
	unsigned long offset = sector << SECTOR_SHIFT;
	unsigned long nbytes = nsect << SECTOR_SHIFT;

	if (offset > dev->size || dev->size - offset < nbytes) {
		FUNC2("Beyond-end %s (%ld %ld)\n",
				write ? "write" : "read", offset, nbytes);
		return;
	}

	FUNC6(&dev->lock);
	while (nbytes > 0) {
		unsigned long io;

		FUNC3(dev->fd, offset, SEEK_SET);
		FUNC0(*buffer);
		if (write)
			io = FUNC5(dev->fd, buffer, nbytes);
		else
			io = FUNC4(dev->fd, buffer, nbytes);
		if (io == -1) {
			FUNC1("SIMDISK: IO error %d\n", errno);
			break;
		}
		buffer += io;
		offset += io;
		nbytes -= io;
	}
	FUNC7(&dev->lock);
}