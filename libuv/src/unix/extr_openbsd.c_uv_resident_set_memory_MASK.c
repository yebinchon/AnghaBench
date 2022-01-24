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
struct kinfo_proc {size_t p_vm_rssize; } ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_PID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int*,int,struct kinfo_proc*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(size_t* rss) {
  struct kinfo_proc kinfo;
  size_t page_size = FUNC1();
  size_t size = sizeof(struct kinfo_proc);
  int mib[6];

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = KERN_PROC_PID;
  mib[3] = FUNC2();
  mib[4] = sizeof(struct kinfo_proc);
  mib[5] = 1;

  if (FUNC3(mib, 6, &kinfo, &size, NULL, 0) < 0)
    return FUNC0(errno);

  *rss = kinfo.p_vm_rssize * page_size;
  return 0;
}