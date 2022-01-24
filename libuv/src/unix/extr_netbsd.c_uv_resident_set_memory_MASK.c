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
struct kinfo_proc2 {int p_vm_rssize; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_PROC_PID ; 
 int /*<<< orphan*/  KVM_NO_FILES ; 
 int UV_EPERM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kinfo_proc2* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC5(size_t* rss) {
  kvm_t *kd = NULL;
  struct kinfo_proc2 *kinfo = NULL;
  pid_t pid;
  int nprocs;
  int max_size = sizeof(struct kinfo_proc2);
  int page_size;

  page_size = FUNC0();
  pid = FUNC1();

  kd = FUNC4(NULL, NULL, NULL, KVM_NO_FILES, "kvm_open");

  if (kd == NULL) goto error;

  kinfo = FUNC3(kd, KERN_PROC_PID, pid, max_size, &nprocs);
  if (kinfo == NULL) goto error;

  *rss = kinfo->p_vm_rssize * page_size;

  FUNC2(kd);

  return 0;

error:
  if (kd) FUNC2(kd);
  return UV_EPERM;
}