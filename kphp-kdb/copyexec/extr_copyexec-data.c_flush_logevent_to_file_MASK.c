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
struct buffered_logevent {unsigned int* data; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cur_transaction_id ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  fd_transaction_logevents ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static void FUNC6 (struct buffered_logevent *L) {
  int size;
  FUNC3 (&size, L->data, 4);
  unsigned logevent_crc32 = FUNC1 (L->data + 8, size);
  FUNC3 (L->data + 4, &logevent_crc32, 4);
  size += 8;
  int bytes_written;
  do {
    bytes_written = FUNC5 (fd_transaction_logevents, L->data, size);
  } while (bytes_written < 0 && errno == EINTR);
  FUNC0 (bytes_written == size);
  FUNC4 (3, "%d bytes to logevent file from tr%d was written (%.4s)\n", size, cur_transaction_id, ((char *) L->data) + 8);
  FUNC2 (L->data);
  L->data = NULL;
}