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
typedef  int pid_t ;

/* Variables and functions */
 int CTL_KERN ; 
 scalar_t__ ENOMEM ; 
 int KERN_PROC_ARGS ; 
 int KERN_PROC_ARGV ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int*,int,char**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char** FUNC6 (char**,size_t) ; 

int FUNC7(char* buffer, size_t* size) {
  int mib[4];
  char **argsbuf = NULL;
  char **argsbuf_tmp;
  size_t argsbuf_size = 100U;
  size_t exepath_size;
  pid_t mypid;
  int err;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  mypid = FUNC1();
  for (;;) {
    err = UV_ENOMEM;
    argsbuf_tmp = FUNC6(argsbuf, argsbuf_size);
    if (argsbuf_tmp == NULL)
      goto out;
    argsbuf = argsbuf_tmp;
    mib[0] = CTL_KERN;
    mib[1] = KERN_PROC_ARGS;
    mib[2] = mypid;
    mib[3] = KERN_PROC_ARGV;
    if (FUNC4(mib, 4, argsbuf, &argsbuf_size, NULL, 0) == 0) {
      break;
    }
    if (errno != ENOMEM) {
      err = FUNC0(errno);
      goto out;
    }
    argsbuf_size *= 2U;
  }

  if (argsbuf[0] == NULL) {
    err = UV_EINVAL;  /* FIXME(bnoordhuis) More appropriate error. */
    goto out;
  }

  *size -= 1;
  exepath_size = FUNC3(argsbuf[0]);
  if (*size > exepath_size)
    *size = exepath_size;

  FUNC2(buffer, argsbuf[0], *size);
  buffer[*size] = '\0';
  err = 0;

out:
  FUNC5(argsbuf);

  return err;
}