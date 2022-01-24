#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* response; int pasv_port; int /*<<< orphan*/  pasv_ip; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC3(knetFile *ftp)
{
	char *p;
	int v[6];
	FUNC0(ftp, "PASV\r\n", 1);
	for (p = ftp->response; *p && *p != '('; ++p);
	if (*p != '(') return -1;
	++p;
	FUNC2(p, "%d,%d,%d,%d,%d,%d", &v[0], &v[1], &v[2], &v[3], &v[4], &v[5]);
	FUNC1(ftp->pasv_ip, v, 4 * sizeof(int));
	ftp->pasv_port = (v[4]<<8&0xff00) + v[5];
	return 0;
}