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
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_ALL ; 
 scalar_t__ FUNC1 (int*,int,struct kinfo_proc*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kinfo_proc* FUNC2 (size_t) ; 

struct kinfo_proc *FUNC3(size_t *count) {
   int mib[4] = { CTL_KERN, KERN_PROC, KERN_PROC_ALL, 0 };
   struct kinfo_proc *processes = NULL;

   /* Note the two calls to sysctl(). One to get length and one to get the
    * data. This -does- mean that the second call could end up with a missing
    * process entry or two.
    */
   *count = 0;
   if (FUNC1(mib, 4, NULL, count, NULL, 0) < 0)
      FUNC0("Unable to get size of kproc_infos");

   processes = FUNC2(*count);
   if (processes == NULL)
      FUNC0("Out of memory for kproc_infos");

   if (FUNC1(mib, 4, processes, count, NULL, 0) < 0)
      FUNC0("Unable to get kinfo_procs");

   *count = *count / sizeof(struct kinfo_proc);

   return processes;
}