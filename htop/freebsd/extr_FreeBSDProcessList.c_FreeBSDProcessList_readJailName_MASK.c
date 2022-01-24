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
struct kinfo_proc {char ki_jid; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  jnamebuf ;

/* Variables and functions */
 int JAIL_ERRMSGLEN ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  errno ; 
 char* jail_errmsg ; 
 int FUNC0 (struct iovec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 

char* FUNC6(struct kinfo_proc* kproc) {
   int    jid;
   struct iovec jiov[6];
   char*  jname;
   char   jnamebuf[MAXHOSTNAMELEN];

   if (kproc->ki_jid != 0 ){
      FUNC1(jnamebuf, 0, sizeof(jnamebuf));
      *(const void **)&jiov[0].iov_base = "jid";
      jiov[0].iov_len = sizeof("jid");
      jiov[1].iov_base = &kproc->ki_jid;
      jiov[1].iov_len = sizeof(kproc->ki_jid);
      *(const void **)&jiov[2].iov_base = "name";
      jiov[2].iov_len = sizeof("name");
      jiov[3].iov_base = jnamebuf;
      jiov[3].iov_len = sizeof(jnamebuf);
      *(const void **)&jiov[4].iov_base = "errmsg";
      jiov[4].iov_len = sizeof("errmsg");
      jiov[5].iov_base = jail_errmsg;
      jiov[5].iov_len = JAIL_ERRMSGLEN;
      jail_errmsg[0] = 0;
      jid = FUNC0(jiov, 6, 0);
      if (jid < 0) {
         if (!jail_errmsg[0])
            FUNC4(jail_errmsg, JAIL_ERRMSGLEN, "jail_get: %s", FUNC2(errno));
            return NULL;
      } else if (jid == kproc->ki_jid) {
         jname = FUNC5(jnamebuf);
         if (jname == NULL)
            FUNC3(errno, jail_errmsg, JAIL_ERRMSGLEN);
         return jname;
      } else {
         return NULL;
      }
   } else {
      jnamebuf[0]='-';
      jnamebuf[1]='\0';
      jname = FUNC5(jnamebuf);
   }
   return jname;
}