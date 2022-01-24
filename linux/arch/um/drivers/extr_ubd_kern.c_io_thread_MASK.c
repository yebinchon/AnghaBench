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
struct io_thread_req {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  UBD_REQ_BUFFER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_count ; 
 int /*<<< orphan*/  io_remainder ; 
 int /*<<< orphan*/  io_remainder_size ; 
 int /*<<< orphan*/ ** io_req_buffer ; 
 int /*<<< orphan*/  kernel_fd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(void *arg)
{
	int n, count, written, res;

	FUNC2();

	while(1){
		n = FUNC0(
			kernel_fd,
			io_req_buffer,
			&io_remainder,
			&io_remainder_size,
			UBD_REQ_BUFFER_SIZE
		);
		if (n < 0) {
			if (n == -EAGAIN) {
				FUNC4(-1);
				continue;
			}
		}

		for (count = 0; count < n/sizeof(struct io_thread_req *); count++) {
			io_count++;
			FUNC1((*io_req_buffer)[count]);
		}

		written = 0;

		do {
			res = FUNC3(kernel_fd, ((char *) io_req_buffer) + written, n);
			if (res >= 0) {
				written += res;
			}
			if (written < n) {
				FUNC5(-1);
			}
		} while (written < n);
	}

	return 0;
}