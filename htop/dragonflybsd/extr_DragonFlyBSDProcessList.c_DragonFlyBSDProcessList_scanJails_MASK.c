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
struct TYPE_3__ {scalar_t__ jails; } ;
typedef  TYPE_1__ DragonFlyBSDProcessList ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char*,char*) ; 
 int FUNC10 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (size_t) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static inline void FUNC13(DragonFlyBSDProcessList* dfpl) {
   size_t len;
   char *jls; /* Jail list */
   char *curpos;
   char *nextpos;

   if (FUNC10("jail.list", NULL, &len, NULL, 0) == -1) {
      FUNC6(stderr, "initial sysctlbyname / jail.list failed\n");
      FUNC5(3);
   }
retry:
   if (len == 0)
      return;

   jls = FUNC11(len);
   if (jls == NULL) {
      FUNC6(stderr, "xMalloc failed\n");
      FUNC5(4);
   }
   if (FUNC10("jail.list", jls, &len, NULL, 0) == -1) {
      if (errno == ENOMEM) {
         FUNC7(jls);
         goto retry;
      }
      FUNC6(stderr, "sysctlbyname / jail.list failed\n");
      FUNC5(5);
   }

   if (dfpl->jails) {
      FUNC0(dfpl->jails);
   }
   dfpl->jails = FUNC2(20, true);
   curpos = jls;
   while (curpos) {
      int jailid;
      char *str_hostname;
      nextpos = FUNC8(curpos, '\n');
      if (nextpos)
         *nextpos++ = 0;

      jailid = FUNC4(FUNC9(curpos, " "));
      str_hostname = FUNC9(NULL, " ");

      char *jname = (char *) (FUNC1(dfpl->jails, jailid));
      if (jname == NULL) {
         jname = FUNC12(str_hostname);
         FUNC3(dfpl->jails, jailid, jname);
      }

      curpos = nextpos;
  }
  FUNC7(jls);
}