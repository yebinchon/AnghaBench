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
struct file_message {int flags; scalar_t__ data; } ;

/* Variables and functions */
 int MAX_EXTRA_MASK ; 
 int TXF_HAS_LEGACY_ID ; 
 int TXF_HAS_LONG_LEGACY_ID ; 
 int TXF_HAS_PEER_MSGID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int index_extra_mask ; 

int FUNC2 (struct file_message *M, int size, char **text_ptr) {
  int k = 0;
  unsigned char *ptr;
  int len, extra_fields;
  if (M->flags & TXF_HAS_LEGACY_ID) { k++; }
  if (M->flags & TXF_HAS_LONG_LEGACY_ID) { k += 2; FUNC0 (!(M->flags & TXF_HAS_LEGACY_ID)); }
  if (M->flags & TXF_HAS_PEER_MSGID) { k++; }
  extra_fields = (M->flags >> 16) & MAX_EXTRA_MASK;
  FUNC0 (!(extra_fields & ~index_extra_mask));
  k += FUNC1 (extra_fields);
  FUNC0 (size >= sizeof (struct file_message) + k * 4);
  ptr = (unsigned char *) (M->data + k);
  len = *ptr++;
  if (len == 254) {
    len = *((unsigned short *) ptr);
    ptr += 2;
  } else if (len == 255) {
    len = *((int *) ptr);
    ptr += 4;
    FUNC0 (len >= 0 && len < size);
  }
  if (text_ptr) {
    *text_ptr = (char *) ptr;
  }
  FUNC0 (sizeof (struct file_message) + k*4 + len <= size);
  return len;
}