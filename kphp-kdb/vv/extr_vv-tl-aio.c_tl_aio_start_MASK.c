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
struct tl_saved_query {int wait_num; int /*<<< orphan*/  attempt; struct aio_connection** restart; } ;
struct aio_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * Connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  default_tl_aio_metafile_query_type ; 
 int /*<<< orphan*/  FUNC1 (struct aio_connection*,int /*<<< orphan*/ *,double,int /*<<< orphan*/ *,struct tl_saved_query*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

int FUNC3 (struct aio_connection **aio_connections, int conn_num, double timeout, struct tl_saved_query *q) {
  FUNC0 (q->restart);
  q->attempt ++;

  FUNC0 (conn_num >= 0);
  if (!conn_num) {
    return 0;
  }

  int i;
  for (i = 0; i < conn_num; i++) {
    FUNC0 (aio_connections);
    FUNC1 (aio_connections[i], &Connections[0], timeout, &default_tl_aio_metafile_query_type, q);
  }
  q->wait_num += conn_num;
  FUNC2 (1, "Creating aio for rpc\n");
  return q->wait_num;
}