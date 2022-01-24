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
typedef  int /*<<< orphan*/  uuid ;
struct uv__sysctl_args {int* name; char* oldval; size_t* oldlenp; int /*<<< orphan*/  nlen; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  SYS__sysctl ; 
 int UV_EIO ; 
 int UV_ENOSYS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct uv__sysctl_args*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct uv__sysctl_args*) ; 

int FUNC5(void* buf, size_t buflen) {
  static int name[] = {1 /*CTL_KERN*/, 40 /*KERN_RANDOM*/, 6 /*RANDOM_UUID*/};
  struct uv__sysctl_args args;
  char uuid[16];
  char* p;
  char* pe;
  size_t n;

  p = buf;
  pe = p + buflen;

  while (p < pe) {
    FUNC3(&args, 0, sizeof(args));

    args.name = name;
    args.nlen = FUNC0(name);
    args.oldval = uuid;
    args.oldlenp = &n;
    n = sizeof(uuid);

    /* Emits a deprecation warning with some kernels but that seems like
     * an okay trade-off for the fallback of the fallback: this function is
     * only called when neither getrandom(2) nor /dev/urandom are available.
     * Fails with ENOSYS on kernels configured without CONFIG_SYSCTL_SYSCALL.
     * At least arm64 never had a _sysctl system call and therefore doesn't
     * have a SYS__sysctl define either.
     */
#ifdef SYS__sysctl
    if (syscall(SYS__sysctl, &args) == -1)
      return UV__ERR(errno);
#else
    {
      (void) &args;
      return UV_ENOSYS;
    }
#endif

    if (n != sizeof(uuid))
      return UV_EIO;  /* Can't happen. */

    /* uuid[] is now a type 4 UUID. Bytes 6 and 8 (counting from zero) contain
     * 4 and 5 bits of entropy, respectively. For ease of use, we skip those
     * and only use 14 of the 16 bytes.
     */
    uuid[6] = uuid[14];
    uuid[8] = uuid[15];

    n = pe - p;
    if (n > 14)
      n = 14;

    FUNC2(p, uuid, n);
    p += n;
  }

  return 0;
}