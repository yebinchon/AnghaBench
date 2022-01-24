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
struct stat {unsigned long st_size; } ;

/* Variables and functions */
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*,unsigned long,void*,unsigned long,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int FUNC4 (char const*,int,...) ; 
 void* FUNC5 (void*,unsigned long,void*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int,void*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 char* usage_str ; 
 scalar_t__ FUNC9 (int,void*,unsigned long) ; 
 void* FUNC10 (unsigned long) ; 

int FUNC11(int argc, const char **argv)
{
	int fd;
	struct stat st;
	void *from_buf, *data_buf, *out_buf;
	unsigned long from_size, data_size, out_size;

	if (argc != 5 || (FUNC8(argv[1], "-d") && FUNC8(argv[1], "-p"))) {
		FUNC2(stderr, "usage: %s\n", usage_str);
		return 1;
	}

	fd = FUNC4(argv[2], O_RDONLY);
	if (fd < 0 || FUNC3(fd, &st)) {
		FUNC6(argv[2]);
		return 1;
	}
	from_size = st.st_size;
	from_buf = FUNC10(from_size);
	if (FUNC7(fd, from_buf, from_size) < 0) {
		FUNC6(argv[2]);
		FUNC0(fd);
		return 1;
	}
	FUNC0(fd);

	fd = FUNC4(argv[3], O_RDONLY);
	if (fd < 0 || FUNC3(fd, &st)) {
		FUNC6(argv[3]);
		return 1;
	}
	data_size = st.st_size;
	data_buf = FUNC10(data_size);
	if (FUNC7(fd, data_buf, data_size) < 0) {
		FUNC6(argv[3]);
		FUNC0(fd);
		return 1;
	}
	FUNC0(fd);

	if (argv[1][1] == 'd')
		out_buf = FUNC1(from_buf, from_size,
				     data_buf, data_size,
				     &out_size, 0);
	else
		out_buf = FUNC5(from_buf, from_size,
				      data_buf, data_size,
				      &out_size);
	if (!out_buf) {
		FUNC2(stderr, "delta operation failed (returned NULL)\n");
		return 1;
	}

	fd = FUNC4 (argv[4], O_WRONLY|O_CREAT|O_TRUNC, 0666);
	if (fd < 0 || FUNC9(fd, out_buf, out_size) < 0) {
		FUNC6(argv[4]);
		return 1;
	}

	return 0;
}