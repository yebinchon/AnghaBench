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
typedef  int /*<<< orphan*/  lit_utf8_byte_t ;
typedef  scalar_t__* current_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ LIT_UTF8_EXTRA_BYTE_MARKER ; 
 int /*<<< orphan*/  LIT_UTF8_EXTRA_BYTE_MASK ; 

void
FUNC1 (const lit_utf8_byte_t **buf_p) /**< [in,out] buffer with characters */
{
  FUNC0 (*buf_p);
  const lit_utf8_byte_t *current_p = *buf_p;

  do
  {
    current_p--;
  }
  while ((*(current_p) & LIT_UTF8_EXTRA_BYTE_MASK) == LIT_UTF8_EXTRA_BYTE_MARKER);

  *buf_p = current_p;
}