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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int LAZY_MAX_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lazy_dir_mutex_array ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	int j;

	lazy_dir_mutex_array = FUNC1(LAZY_MAX_MUTEX, sizeof(pthread_mutex_t));

	for (j = 0; j < LAZY_MAX_MUTEX; j++)
		FUNC0(&lazy_dir_mutex_array[j]);
}