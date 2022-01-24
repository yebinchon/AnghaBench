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
typedef  int /*<<< orphan*/  timestamp_t ;
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct rerere_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rerere_id*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static timestamp_t FUNC2(struct rerere_id *id)
{
	struct stat st;

	return FUNC1(FUNC0(id, "postimage"), &st) ? (time_t) 0 : st.st_mtime;
}