
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc2 {int p_vm_rssize; } ;
typedef int pid_t ;
typedef int kvm_t ;


 int KERN_PROC_PID ;
 int KVM_NO_FILES ;
 int UV_EPERM ;
 int getpagesize () ;
 int getpid () ;
 int kvm_close (int *) ;
 struct kinfo_proc2* kvm_getproc2 (int *,int ,int ,int,int*) ;
 int * kvm_open (int *,int *,int *,int ,char*) ;

int uv_resident_set_memory(size_t* rss) {
  kvm_t *kd = ((void*)0);
  struct kinfo_proc2 *kinfo = ((void*)0);
  pid_t pid;
  int nprocs;
  int max_size = sizeof(struct kinfo_proc2);
  int page_size;

  page_size = getpagesize();
  pid = getpid();

  kd = kvm_open(((void*)0), ((void*)0), ((void*)0), KVM_NO_FILES, "kvm_open");

  if (kd == ((void*)0)) goto error;

  kinfo = kvm_getproc2(kd, KERN_PROC_PID, pid, max_size, &nprocs);
  if (kinfo == ((void*)0)) goto error;

  *rss = kinfo->p_vm_rssize * page_size;

  kvm_close(kd);

  return 0;

error:
  if (kd) kvm_close(kd);
  return UV_EPERM;
}
