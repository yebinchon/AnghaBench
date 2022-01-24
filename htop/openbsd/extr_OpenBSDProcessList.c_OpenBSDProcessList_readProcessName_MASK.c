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
struct kinfo_proc {char* p_comm; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int FUNC0 (size_t,size_t) ; 
 char** FUNC1 (int /*<<< orphan*/ *,struct kinfo_proc*,int) ; 
 char* FUNC2 (size_t) ; 
 size_t FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 

char *FUNC6(kvm_t* kd, struct kinfo_proc* kproc, int* basenameEnd) {
   char *s, **arg;
   size_t len = 0, n;
   int i;

   /*
    * Like OpenBSD's top(1), we try to fall back to the command name
    * (argv[0]) if we fail to construct the full command.
    */
   arg = FUNC1(kd, kproc, 500);
   if (arg == NULL || *arg == NULL) {
      *basenameEnd = FUNC4(kproc->p_comm);
      return FUNC5(kproc->p_comm);
   }
   for (i = 0; arg[i] != NULL; i++) {
      len += FUNC4(arg[i]) + 1;   /* room for arg and trailing space or NUL */
   }
   /* don't use xMalloc here - we want to handle huge argv's gracefully */
   if ((s = FUNC2(len)) == NULL) {
      *basenameEnd = FUNC4(kproc->p_comm);
      return FUNC5(kproc->p_comm);
   }

   *s = '\0';

   for (i = 0; arg[i] != NULL; i++) {
      n = FUNC3(s, arg[i], len);
      if (i == 0) {
         /* TODO: rename all basenameEnd to basenameLen, make size_t */
         *basenameEnd = FUNC0(n, len-1);
      }
      /* the trailing space should get truncated anyway */
      FUNC3(s, " ", len);
   }

   return s;
}