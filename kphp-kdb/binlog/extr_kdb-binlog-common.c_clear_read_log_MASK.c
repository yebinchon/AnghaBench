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
 int /*<<< orphan*/  LogBuffer ; 
 int /*<<< orphan*/  R ; 
 int ULOG_BUFFER_SIZE ; 
 scalar_t__ ZLOG_BUFFER_SIZE ; 
 scalar_t__ binlog_zipped ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC1 (void) {
  int readlog_size = ULOG_BUFFER_SIZE;
  if (binlog_zipped) {
    readlog_size += ZLOG_BUFFER_SIZE;
  }
  FUNC0 (&R, LogBuffer, readlog_size);
}