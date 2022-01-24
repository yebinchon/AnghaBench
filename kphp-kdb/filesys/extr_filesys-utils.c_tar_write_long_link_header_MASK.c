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
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 int TAR_PACK_ERR_GZWRITE ; 
 int TAR_PACK_ERR_WRITE_HEADER ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4 (gzFile f, char header[512], int link_length, const char *const data) {
  if (FUNC3 (f, header) < 0) {
    return TAR_PACK_ERR_WRITE_HEADER;
  }
  int i;
  for (i = 0; i < link_length + 1; i += 512) {
    int o = link_length + 1 - i;
    if (o > 512) {
      o = 512;
    }
    FUNC2 (header, 0, 512);
    FUNC1 (header, data + i, o);
    if (FUNC0 (f, header, 512) != 512) {
      return TAR_PACK_ERR_GZWRITE;
    }
  }
  return 0;
}