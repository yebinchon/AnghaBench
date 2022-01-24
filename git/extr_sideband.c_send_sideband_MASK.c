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
typedef  unsigned int ssize_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

void FUNC2(int fd, int band, const char *data, ssize_t sz, int packet_max)
{
	const char *p = data;

	while (sz) {
		unsigned n;
		char hdr[5];

		n = sz;
		if (packet_max - 5 < n)
			n = packet_max - 5;
		if (0 <= band) {
			FUNC1(hdr, sizeof(hdr), "%04x", n + 5);
			hdr[4] = band;
			FUNC0(fd, hdr, 5);
		} else {
			FUNC1(hdr, sizeof(hdr), "%04x", n + 4);
			FUNC0(fd, hdr, 4);
		}
		FUNC0(fd, p, n);
		p += n;
		sz -= n;
	}
}