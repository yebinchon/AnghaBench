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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static char *
FUNC4(mrb_state *mrb, char *infile, const char *ext)
{
  size_t infilelen;
  size_t extlen;
  char *outfile;
  char *p;

  infilelen = FUNC2(infile);
  extlen = FUNC2(ext);
  outfile = (char*)FUNC1(mrb, infilelen + extlen + 1);
  FUNC0(outfile, infile, infilelen + 1);
  if (*ext) {
    if ((p = FUNC3(outfile, '.')) == NULL)
      p = outfile + infilelen;
    FUNC0(p, ext, extlen + 1);
  }

  return outfile;
}