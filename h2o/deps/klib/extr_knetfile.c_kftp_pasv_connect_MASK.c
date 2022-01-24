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
struct TYPE_3__ {int pasv_port; int* pasv_ip; int fd; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(knetFile *ftp)
{
	char host[80], port[10];
	if (ftp->pasv_port == 0) {
		FUNC0(stderr, "[kftp_pasv_connect] kftp_pasv_prep() is not called before hand.\n");
		return -1;
	}
	FUNC2(host, "%d.%d.%d.%d", ftp->pasv_ip[0], ftp->pasv_ip[1], ftp->pasv_ip[2], ftp->pasv_ip[3]);
	FUNC2(port, "%d", ftp->pasv_port);
	ftp->fd = FUNC1(host, port);
	if (ftp->fd == -1) return -1;
	return 0;
}