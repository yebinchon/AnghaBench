#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int static_file_max_len; int static_file_idx; char** static_files; scalar_t__ all_static_files; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC3 (const char *req)
{
  const char *nul = req + FUNC1 (req);
  const char *ext = NULL, *pch = NULL;
  int elen = 0, i;

  if (FUNC1 (req) < conf.static_file_max_len)
    return 0;

  for (i = 0; i < conf.static_file_idx; ++i) {
    ext = conf.static_files[i];
    if (ext == NULL || *ext == '\0')
      continue;

    elen = FUNC1 (ext);
    if (conf.all_static_files && (pch = FUNC0 (req, '?')) != NULL &&
        pch - req > elen) {
      pch -= elen;
      if (0 == FUNC2 (ext, pch, elen))
        return 1;
      continue;
    }

    if (!FUNC2 (nul - elen, ext, elen))
      return 1;
  }

  return 0;
}