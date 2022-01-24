#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* dev_name; int fd; } ;
struct TYPE_7__ {TYPE_2__ tuntap; } ;
struct TYPE_8__ {TYPE_3__ info; } ;
struct iss_net_private {TYPE_4__ tp; TYPE_1__* dev; } ;
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_NO_PI ; 
 int IFF_TAP ; 
 int /*<<< orphan*/  TUNSETIFF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct iss_net_private *lp)
{
	struct ifreq ifr;
	char *dev_name = lp->tp.info.tuntap.dev_name;
	int err = -EINVAL;
	int fd;

	fd = FUNC4("/dev/net/tun", 02, 0); /* O_RDWR */
	if (fd < 0) {
		FUNC1("%s: failed to open /dev/net/tun, returned %d (errno = %d)\n",
		       lp->dev->name, fd, errno);
		return fd;
	}

	FUNC0(&ifr, 0, sizeof(ifr));
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
	FUNC5(ifr.ifr_name, dev_name, sizeof(ifr.ifr_name));

	err = FUNC3(fd, TUNSETIFF, &ifr);
	if (err < 0) {
		FUNC1("%s: failed to set interface %s, returned %d (errno = %d)\n",
		       lp->dev->name, dev_name, err, errno);
		FUNC2(fd);
		return err;
	}

	lp->tp.info.tuntap.fd = fd;
	return err;
}