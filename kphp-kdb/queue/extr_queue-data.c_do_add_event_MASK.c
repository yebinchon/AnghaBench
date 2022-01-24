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

/* Variables and functions */
 int MAX_QNAME ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (char *qname, int qname_len, char *data, int data_len, int x, int y, int ttl) {
  if (verbosity > 2) {
    FUNC1 (stderr, "Queue name [%s], data %d:[%s] { & %d = %d} ttl = %d\n", qname, data_len, data, x, y, ttl);
  }

  //TODO check qname
  if (qname_len <= 0 || data_len <= 0 || qname_len > MAX_QNAME || data_len > 32768) {
    return 0;
  }

  return FUNC0 (FUNC2 (qname, 0), data, data_len, x, y, ttl);
}