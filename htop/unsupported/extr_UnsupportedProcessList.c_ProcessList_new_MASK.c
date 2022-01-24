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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  UsersTable ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  int /*<<< orphan*/  Hashtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Process ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 

ProcessList* FUNC3(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   ProcessList* this = FUNC2(1, sizeof(ProcessList));
   FUNC1(this, FUNC0(Process), usersTable, pidWhiteList, userId);
   
   return this;
}