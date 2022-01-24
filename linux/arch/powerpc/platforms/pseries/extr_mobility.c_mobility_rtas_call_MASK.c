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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  RTAS_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* rtas_data_buf ; 
 int /*<<< orphan*/  rtas_data_buf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int token, char *buf, s32 scope)
{
	int rc;

	FUNC2(&rtas_data_buf_lock);

	FUNC0(rtas_data_buf, buf, RTAS_DATA_BUF_SIZE);
	rc = FUNC1(token, 2, 1, NULL, rtas_data_buf, scope);
	FUNC0(buf, rtas_data_buf, RTAS_DATA_BUF_SIZE);

	FUNC3(&rtas_data_buf_lock);
	return rc;
}