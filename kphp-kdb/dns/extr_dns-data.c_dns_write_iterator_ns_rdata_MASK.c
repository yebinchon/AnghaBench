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
struct TYPE_9__ {TYPE_1__ Out; } ;
typedef  TYPE_2__ dns_response_t ;
struct TYPE_10__ {int /*<<< orphan*/  addrs_nsd; int /*<<< orphan*/  nsdname_len; int /*<<< orphan*/  nsdname; } ;
typedef  TYPE_3__ dns_nameserver_en_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (dns_response_t *r, dns_nameserver_en_t *N, unsigned short *rlen) {
  //vkprintf (3, "%s: preference = %d, exchanged = '%s'\n", __func__, M->preference, M->exchange);
  dns_write_iterator_t *out = &r->Out;
  if (FUNC1 (out, N->nsdname, N->nsdname_len) < 0) { return -1; }
  *rlen = FUNC2 ((out->wptr - (unsigned char *) rlen) - 2);
  FUNC0 (r, N->nsdname, N->nsdname_len, &N->addrs_nsd);
  return 0;
}