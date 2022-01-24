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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int UV_EIO ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static int FUNC2(FILE* statfile_fp, unsigned int* numcpus) {
  unsigned int num;
  char buf[1024];

  if (!FUNC0(buf, sizeof(buf), statfile_fp))
    return UV_EIO;

  num = 0;
  while (FUNC0(buf, sizeof(buf), statfile_fp)) {
    if (FUNC1(buf, "cpu", 3))
      break;
    num++;
  }

  if (num == 0)
    return UV_EIO;

  *numcpus = num;
  return 0;
}