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
typedef  TYPE_2__* j_common_ptr ;
struct TYPE_8__ {int /*<<< orphan*/  setjmp_buffer; } ;
typedef  TYPE_3__ bt_jpeg_error_mgr ;
struct TYPE_7__ {TYPE_1__* err; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* format_message ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  errormsg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( j_common_ptr cinfo ){
	bt_jpeg_error_mgr* myerr = (bt_jpeg_error_mgr*) cinfo->err;

	( *cinfo->err->format_message )( cinfo, errormsg );

	FUNC0( myerr->setjmp_buffer, 1 );
}