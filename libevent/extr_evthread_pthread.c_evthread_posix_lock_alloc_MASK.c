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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  void pthread_mutex_t ;

/* Variables and functions */
 unsigned int EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  attr_recursive ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC3(unsigned locktype)
{
	pthread_mutexattr_t *attr = NULL;
	pthread_mutex_t *lock = FUNC1(sizeof(pthread_mutex_t));
	if (!lock)
		return NULL;
	if (locktype & EVTHREAD_LOCKTYPE_RECURSIVE)
		attr = &attr_recursive;
	if (FUNC2(lock, attr)) {
		FUNC0(lock);
		return NULL;
	}
	return lock;
}