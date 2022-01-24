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
struct jv_parser {int tokenpos; int tokenlen; char* tokenbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(struct jv_parser* p, char c) {
  FUNC0(p->tokenpos <= p->tokenlen);
  if (p->tokenpos >= (p->tokenlen - 1)) {
    p->tokenlen = p->tokenlen*2 + 256;
    p->tokenbuf = FUNC1(p->tokenbuf, p->tokenlen);
  }
  FUNC0(p->tokenpos < p->tokenlen);
  p->tokenbuf[p->tokenpos++] = c;
}