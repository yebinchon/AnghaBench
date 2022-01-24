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
struct searchx_list_decoder {int remaining; int len; int /*<<< orphan*/  dec; } ;

/* Variables and functions */
 scalar_t__ IndexData ; 
 int MAX_WORDS ; 
 int Q_decoders ; 
 int /*<<< orphan*/ * allocated_list_decoders ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long idx_bytes ; 
 long long index_size ; 
 int /*<<< orphan*/  le_golomb ; 
 int /*<<< orphan*/  FUNC1 (long long*,void const*,int) ; 
 long long word_index_offset ; 
 int /*<<< orphan*/  FUNC2 (int,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (struct searchx_list_decoder *D, int N, int K, int bytes, const void *file_offset) {
  unsigned char *ptr;
  if (bytes <= 8) {
    ptr = (unsigned char *) file_offset;
  } else {
    long long offs;
    FUNC1 (&offs, file_offset, 8);
    FUNC0 (offs >= word_index_offset && offs < index_size);
    FUNC0 (offs + bytes <= index_size);
    offs -= word_index_offset;
    FUNC0 (offs >= 0 && offs < idx_bytes && offs + bytes <= idx_bytes);
    ptr = (unsigned char *)(IndexData + offs);
  }
  FUNC0 (Q_decoders < 2 * MAX_WORDS);
  D->dec = allocated_list_decoders[Q_decoders++] = FUNC2 (N, K, ptr, le_golomb, 0);
  D->remaining = K;
  D->len = K;
}