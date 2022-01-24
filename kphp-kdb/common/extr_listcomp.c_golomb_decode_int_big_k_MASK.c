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
struct bitreader {int m; } ;
struct list_decoder {int last; int k; int p; scalar_t__ M; struct bitreader br; } ;

/* Variables and functions */
 scalar_t__ decode_cur_bit ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1 (struct list_decoder *dec) {
  struct bitreader *br = &dec->br;
  register int m = br->m;
  int d = 0, a = dec->last;
  while (decode_cur_bit) {
    a += dec->M;
    FUNC0();
  }
  FUNC0();
  int i = dec->k;
  do {
    d <<= 1;
    if (decode_cur_bit) {
      d++;
    }
    FUNC0();
  } while (--i > 1);
  if (d >= dec->p) {
    d <<= 1;
    if (decode_cur_bit) {
      d++;
    }
    FUNC0();
    d -= dec->p;
  }
  br->m = m;
  return dec->last = a + d + 1;
}