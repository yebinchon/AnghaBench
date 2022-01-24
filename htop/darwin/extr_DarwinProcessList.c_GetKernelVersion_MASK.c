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
typedef  int /*<<< orphan*/  version_ ;
struct kern {int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,short*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,short*,short*,short*) ; 
 int FUNC2 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct kern *k) {
   static short int version_[3] = {0};
   if (!version_[0]) {
      // just in case it fails someday
      version_[0] = version_[1] = version_[2] = -1;
      char str[256] = {0};
      size_t size = sizeof(str);
      int ret = FUNC2("kern.osrelease", str, &size, NULL, 0);
      if (ret == 0) FUNC1(str, "%hd.%hd.%hd", &version_[0], &version_[1], &version_[2]);
    }
    FUNC0(k->version, version_, sizeof(version_));
}