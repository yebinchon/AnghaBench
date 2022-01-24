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
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int FMINUS ; 
 int FPLUS ; 
 int FPREC ; 
 int FSHARP ; 
 int FSPACE ; 
 int FWIDTH ; 
 int FZERO ; 
 int FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC1(char *buf, size_t size, int c, int flags, mrb_int width, mrb_int prec)
{
  char *end = buf + size;
  int n;

  *buf++ = '%';
  if (flags & FSHARP) *buf++ = '#';
  if (flags & FPLUS)  *buf++ = '+';
  if (flags & FMINUS) *buf++ = '-';
  if (flags & FZERO)  *buf++ = '0';
  if (flags & FSPACE) *buf++ = ' ';

  if (flags & FWIDTH) {
    n = FUNC0(buf, end - buf, "%d", (int)width);
    buf += n;
  }

  if (flags & FPREC) {
    n = FUNC0(buf, end - buf, ".%d", (int)prec);
    buf += n;
  }

  *buf++ = c;
  *buf = '\0';
}