#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msg_buffer {int dummy; } ;
struct TYPE_3__ {int buffer_size; } ;

/* Variables and functions */
 TYPE_1__* ChunkHeaders ; 
 struct msg_buffer* FUNC0 (struct msg_buffer*,TYPE_1__*) ; 
 int buffer_size_values ; 
 int /*<<< orphan*/  FUNC1 () ; 

struct msg_buffer *FUNC2 (struct msg_buffer *neighbor, int size_hint) {
  if (!buffer_size_values) {
    FUNC1 ();
  }
  int si = buffer_size_values - 1;
  if (size_hint >= 0) {
    while (si > 0 && ChunkHeaders[si-1].buffer_size >= size_hint) {
      si--;
    }
  }
  return FUNC0 (neighbor, &ChunkHeaders[si]);
}