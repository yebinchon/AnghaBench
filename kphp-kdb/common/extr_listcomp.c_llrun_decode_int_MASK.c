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
struct bitreader {int dummy; } ;
struct list_decoder {int* data; int /*<<< orphan*/  last; struct bitreader br; } ;

/* Variables and functions */
 int HUFFMAN_MAX_CODE_LENGTH ; 
 int FUNC0 (struct bitreader*,int*,int*) ; 
 int FUNC1 (struct bitreader*,int) ; 

__attribute__((used)) static int FUNC2 (struct list_decoder *dec) {
  struct bitreader *br = &dec->br;
  int *data = dec->data, o = FUNC0 (br, data, data + (HUFFMAN_MAX_CODE_LENGTH + 1));
  return dec->last += FUNC1 (br, o) + (1 << o);
}