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
struct fuse_conn_info {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  ff_mutex ; 
 int /*<<< orphan*/  ff_server_thread ; 
 scalar_t__ ff_start_server ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_server ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

void *FUNC7 (struct fuse_conn_info *conn) {
  FUNC6 (2, "ff_init\n");
  FUNC5 (&ff_mutex, NULL);
  if (ff_start_server) {
    pthread_attr_t attr;
    FUNC1 (&attr);
    FUNC2 (&attr, PTHREAD_CREATE_JOINABLE);
    FUNC3 (&attr, 4 << 20);
    FUNC4 (&ff_server_thread, &attr, start_server, NULL);
    FUNC0 (&attr);
    ff_start_server = 0;
  }
  return NULL;
}