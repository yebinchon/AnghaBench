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
struct buff_file {scalar_t__ wptr; scalar_t__ wend; int after_crc32; int /*<<< orphan*/  crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buff_file*) ; 

void FUNC4 (struct buff_file *T, const void *L, int size) {
  size = (size + 3) & -4;
  FUNC0 (!(size & (-0x100000)));
  if (T->wptr + size > T->wend) {
    FUNC3 (T);
    FUNC0 (T->wptr + size <= T->wend);
  }
  FUNC2 (T->wptr, L, size);
  T->wptr += size;
  T->after_crc32 += size;
  T->crc32 = FUNC1 (L, size, T->crc32);
}