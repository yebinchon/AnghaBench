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
struct tl_int_array {int pos; int size; int* buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

int FUNC3 (struct tl_int_array *a, char *s) {
  int len = FUNC2 (s);
  if (len >= 0x1000000) {
    return -1;
  }
  int l = len + ((len < 0xfe) ? 1 : 4);
  l = (l + 3) >> 2;
  if (a->pos + l > a->size) {
    return -1;
  }
  char *dest = (char *) &a->buff[a->pos];
  if (len < 0xfe) {
    *dest++ = len;
  } else {
    a->buff[a->pos] = (len << 8) + 0xfe;
    dest += 4;
  }
  FUNC1 (dest, s, len);
  dest += len;
  while ((long) dest & 3) {
    *dest++ = 0;
  }
  a->pos += l;
  FUNC0 ((void *) dest == (void *) &a->buff[a->pos]);
  return 0;
}