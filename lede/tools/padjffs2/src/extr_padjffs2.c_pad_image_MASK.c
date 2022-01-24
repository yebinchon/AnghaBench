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
typedef  int uint32_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,float,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* pad ; 
 int pad_len ; 
 int /*<<< orphan*/  pad_to_stdout ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (int,char*,int) ; 
 int xtra_offset ; 

__attribute__((used)) static int FUNC11(char *name, uint32_t pad_mask)
{
	char *buf;
	int fd;
	int outfd;
	ssize_t in_len;
	ssize_t out_len;
	int ret = -1;

	buf = FUNC7(BUF_SIZE);
	if (!buf) {
		FUNC1("No memory for buffer");
		goto out;
	}

	fd = FUNC9(name, O_RDWR);
	if (fd < 0) {
		FUNC2("Unable to open %s", name);
		goto free_buf;
	}

	in_len = FUNC6(fd, 0, SEEK_END);
	if (in_len < 0)
		goto close;

	if (!pad_to_stdout)
		outfd = fd;
	else
		outfd = STDOUT_FILENO;

	FUNC8(buf, '\xff', BUF_SIZE);

	in_len += xtra_offset;

	out_len = in_len;
	while (pad_mask) {
		uint32_t mask;
		ssize_t t;
		int i;

		for (i = 10; i < 32; i++) {
			mask = 1UL << i;
			if (pad_mask & mask)
				break;
		}

		in_len = FUNC0(in_len, mask);

		for (i = 10; i < 32; i++) {
			mask = 1UL << i;
			if ((in_len & (mask - 1)) == 0)
				pad_mask &= ~mask;
		}

		FUNC4(stderr, "padding image to %08x\n", (unsigned int) in_len - xtra_offset);

		while (out_len < in_len) {
			ssize_t len;

			len = in_len - out_len;
			if (len > BUF_SIZE)
				len = BUF_SIZE;

			t = FUNC10(outfd, buf, len);
			if (t != len) {
				FUNC2("Unable to write to %s", name);
				goto close;
			}

			out_len += len;
		}

		/* write out the JFFS end-of-filesystem marker */
		t = FUNC10(outfd, pad, pad_len);
		if (t != pad_len) {
			FUNC2("Unable to write to %s", name);
			goto close;
		}
		out_len += pad_len;
	}

	ret = 0;

close:
	FUNC3(fd);
free_buf:
	FUNC5(buf);
out:
	return ret;
}