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
typedef  int /*<<< orphan*/  volume_t ;

/* Variables and functions */
 int STORAGE_ERR_UNKNOWN_VOLUME_ID ; 
 int /*<<< orphan*/ * FUNC0 (long long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned long long,unsigned long long*) ; 

int FUNC2 (long long volume_id, unsigned char md5[16], unsigned long long secret, volume_t **V, unsigned long long *offset) {
  *V = FUNC0 (volume_id, 0);
  if (*V == NULL) {
    return STORAGE_ERR_UNKNOWN_VOLUME_ID;
  }
  int r = FUNC1 (*V, md5, secret, offset);
  if (r) {
    return r;
  }
  return 0;
}