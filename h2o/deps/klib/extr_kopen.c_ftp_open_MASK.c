#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ctrl_fd; char* response; } ;
typedef  TYPE_1__ ftpaux_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int*,int*,int*,int*,int*,int*) ; 
 char* FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 char const* FUNC13 (char const*,char*) ; 

__attribute__((used)) static int FUNC14(const char *fn)
{
	char *p, *host = 0, *port = 0, *retr = 0;
	char host2[80], port2[10];
	int v[6], l, fd = -1, ret, pasv_port, pasv_ip[4];
	ftpaux_t aux;
	
	/* parse URL */
	if (FUNC13(fn, "ftp://") != fn) return 0;
	for (p = (char*)fn + 6; *p && *p != '/'; ++p);
	if (*p != '/') return 0;
	l = p - fn - 6;
	port = FUNC10("21");
	host = FUNC0(l + 1, 1);
	FUNC12(host, fn + 6, l);
	retr = FUNC0(FUNC11(p) + 8, 1);
	FUNC8(retr, "RETR %s\r\n", p);
	
	/* connect to ctrl */
	FUNC6(&aux, 0, sizeof(ftpaux_t));
	aux.ctrl_fd = FUNC7(host, port);
	if (aux.ctrl_fd == -1) goto ftp_open_end; /* fail to connect ctrl */

	/* connect to the data stream */
	FUNC3(&aux);
	FUNC4(&aux, "USER anonymous\r\n", 1);
	FUNC4(&aux, "PASS kopen@\r\n", 1);
	FUNC4(&aux, "TYPE I\r\n", 1);
	FUNC4(&aux, "PASV\r\n", 1);
	for (p = aux.response; *p && *p != '('; ++p);
	if (*p != '(') goto ftp_open_end;
	++p;
	FUNC9(p, "%d,%d,%d,%d,%d,%d", &v[0], &v[1], &v[2], &v[3], &v[4], &v[5]);
	FUNC5(pasv_ip, v, 4 * sizeof(int));
	pasv_port = (v[4]<<8&0xff00) + v[5];
	FUNC4(&aux, retr, 0);
	FUNC8(host2, "%d.%d.%d.%d", pasv_ip[0], pasv_ip[1], pasv_ip[2], pasv_ip[3]);
	FUNC8(port2, "%d", pasv_port);
	fd = FUNC7(host2, port2);
	if (fd == -1) goto ftp_open_end;
	ret = FUNC3(&aux);
	if (ret != 150) {
		FUNC1(fd);
		fd = -1;
	}
	FUNC1(aux.ctrl_fd);

ftp_open_end:
	FUNC2(host); FUNC2(port); FUNC2(retr); FUNC2(aux.response);
	return fd;
}