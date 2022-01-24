#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iwdp_t ;
typedef  TYPE_2__* iwdp_idl_t ;
typedef  TYPE_3__* dl_t ;
typedef  int /*<<< orphan*/  dl_status ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int dl_fd; TYPE_1__* self; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* send ) (TYPE_1__*,int,char const*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char const*,size_t) ; 

dl_status FUNC1(dl_t dl, const char *buf, size_t length) {
  iwdp_idl_t idl = (iwdp_idl_t)dl->state;
  iwdp_t self = idl->self;
  int dl_fd = idl->dl_fd;
  return self->send(self, dl_fd, buf, length);
}