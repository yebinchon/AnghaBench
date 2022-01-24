#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_6__ {size_t len; char* base; } ;
typedef  TYPE_1__ uv_buf_t ;
struct TYPE_7__ {TYPE_1__ uv_buf_t; struct TYPE_7__* next; } ;
typedef  TYPE_2__ buf_list_t ;

/* Variables and functions */
 TYPE_2__* buf_freelist ; 
 TYPE_2__* FUNC0 (size_t) ; 

__attribute__((used)) static void FUNC1(uv_handle_t* handle, size_t size, uv_buf_t* buf) {
  buf_list_t* ab;

  ab = buf_freelist;
  if (ab != NULL)
    buf_freelist = ab->next;
  else {
    ab = FUNC0(size + sizeof(*ab));
    ab->uv_buf_t.len = size;
    ab->uv_buf_t.base = (char*) (ab + 1);
  }

  *buf = ab->uv_buf_t;
}