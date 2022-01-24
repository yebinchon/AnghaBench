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
struct kinfo_proc {int /*<<< orphan*/  ki_comm; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 char** FUNC0 (int /*<<< orphan*/ *,struct kinfo_proc*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

char* FUNC5(kvm_t* kd, struct kinfo_proc* kproc, int* basenameEnd) {
   char** argv = FUNC0(kd, kproc, 0);
   if (!argv) {
      return FUNC4(kproc->ki_comm);
   }
   int len = 0;
   for (int i = 0; argv[i]; i++) {
      len += FUNC2(argv[i]) + 1;
   }
   char* comm = FUNC3(len);
   char* at = comm;
   *basenameEnd = 0;
   for (int i = 0; argv[i]; i++) {
      at = FUNC1(at, argv[i]);
      if (!*basenameEnd) {
         *basenameEnd = at - comm;
      }
      *at = ' ';
      at++;
   }
   at--;
   *at = '\0';
   return comm;
}