#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned char* wptr; } ;
typedef  TYPE_1__ dns_write_iterator_t ;
struct TYPE_9__ {int /*<<< orphan*/ * data; scalar_t__ rname_len; scalar_t__ mname_len; scalar_t__ rname; scalar_t__ mname; } ;
typedef  TYPE_2__ dns_soa_t ;
struct TYPE_10__ {TYPE_1__ Out; } ;
typedef  TYPE_3__ dns_response_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (dns_response_t *r, dns_soa_t *S, unsigned short *rlen) {
  int i;
  dns_write_iterator_t *out = &r->Out;
  if (FUNC0 (out, S->mname, S->mname_len) < 0) { return -1; }
  if (FUNC0 (out, S->rname + S->mname_len, S->rname_len) < 0) { return -1; }
  for (i = 0; i < 5; i++) {
    if (FUNC1 (out, S->data[i]) < 0) { return -1; }
  }
  *rlen = FUNC2 ((out->wptr - (unsigned char *) rlen) - 2);
  return 0;
}