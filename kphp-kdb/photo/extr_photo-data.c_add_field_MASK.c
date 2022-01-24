#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int field_i; int field_n; int shifts_len; TYPE_2__* fields; } ;
typedef  TYPE_1__ type_desc ;
typedef  int /*<<< orphan*/  field_desc ;
struct TYPE_6__ {int type; int is_const; int id; int shift; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int t_raw ; 
 int t_string ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4 (type_desc *desc, char *name, int type, int is_const) {
  FUNC0 (type >= 0);
  if (desc->field_i == desc->field_n) {
    int nn = desc->field_n + 1;
    if (FUNC3 (nn <= 0)) {
      nn = 1;
    }
    desc->fields = FUNC1 (desc->fields, sizeof (field_desc) * nn, sizeof (field_desc) * desc->field_n);
    desc->field_n = nn;
  } else {
    FUNC0 (0);
  }

  int i = desc->field_i++;
  desc->fields[i].type = type;
  desc->fields[i].name = FUNC2 (name);
  desc->fields[i].is_const = is_const;
  desc->fields[i].id = i;

  desc->fields[i].shift = desc->shifts_len;
  desc->shifts_len += (type == t_string || type == t_raw) ? 2 : 1;
}