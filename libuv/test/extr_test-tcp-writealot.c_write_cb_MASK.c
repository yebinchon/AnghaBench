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
typedef  int /*<<< orphan*/  uv_write_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CHUNKS_PER_WRITE ; 
 int CHUNK_SIZE ; 
 int bytes_sent_done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  write_cb_called ; 

__attribute__((used)) static void FUNC3(uv_write_t* req, int status) {
  FUNC0(req != NULL);

  if (status) {
    FUNC1(stderr, "uv_write error: %s\n", FUNC2(status));
    FUNC0(0);
  }

  bytes_sent_done += CHUNKS_PER_WRITE * CHUNK_SIZE;
  write_cb_called++;
}