#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int avail_in; int rptr; } ;
typedef  TYPE_1__ dns_read_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC1 (dns_read_iterator_t *B, int len, unsigned char *res) {
  if (B->avail_in < len) {
    return -1;
  }
  FUNC0 (res, B->rptr, len);
  B->avail_in -= len;
  B->rptr += len;
  return 0;
}