#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  users; } ;
typedef  TYPE_1__ UsersTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,char*) ; 
 struct passwd* FUNC2 (unsigned int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

char* FUNC4(UsersTable* this, unsigned int uid) {
   char* name = (char*) (FUNC0(this->users, uid));
   if (name == NULL) {
      struct passwd* userData = FUNC2(uid);
      if (userData != NULL) {
         name = FUNC3(userData->pw_name);
         FUNC1(this->users, uid, name);
      }
   }
   return name;
}