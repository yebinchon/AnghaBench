#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iwdp_type_t ;
typedef  TYPE_2__* iwdp_t ;
typedef  int /*<<< orphan*/  iwdp_status ;
typedef  int /*<<< orphan*/  iwdp_iws_t ;
typedef  int /*<<< orphan*/  iwdp_iwi_t ;
typedef  int /*<<< orphan*/  iwdp_iport_t ;
typedef  int /*<<< orphan*/  iwdp_ifs_t ;
typedef  int /*<<< orphan*/  iwdp_idl_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* on_error ) (TYPE_2__*,char*,int) ;} ;
struct TYPE_10__ {int type; } ;

/* Variables and functions */
#define  TYPE_IDL 132 
#define  TYPE_IFS 131 
#define  TYPE_IPORT 130 
#define  TYPE_IWI 129 
#define  TYPE_IWS 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 

iwdp_status FUNC6(iwdp_t self, int fd, void *value, bool is_server) {
  int type = ((iwdp_type_t)value)->type;
  switch (type) {
    case TYPE_IDL:
      return FUNC0(self, (iwdp_idl_t)value);
    case TYPE_IPORT:
      return FUNC2(self, (iwdp_iport_t)value);
    case TYPE_IWI:
      return FUNC3(self, (iwdp_iwi_t)value);
    case TYPE_IWS:
      return FUNC4(self, (iwdp_iws_t)value);
    case TYPE_IFS:
      return FUNC1(self, (iwdp_ifs_t)value);
    default:
      return self->on_error(self, "Unknown close type %d", type);
  }
}