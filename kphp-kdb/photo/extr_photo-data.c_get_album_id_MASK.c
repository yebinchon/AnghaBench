#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event ;
struct TYPE_2__ {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 size_t ALBUM_TYPE ; 
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t album_type_id ; 
 TYPE_1__* types ; 

int FUNC1 (event *e) {
  return *FUNC0 (e, &types[ALBUM_TYPE].fields[album_type_id]);
}