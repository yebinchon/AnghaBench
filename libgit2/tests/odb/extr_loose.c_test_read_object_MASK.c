#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ object_data ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_11__ {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {TYPE_1__ cached; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_4__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(object_data *data)
{
    git_oid id;
    git_odb_object *obj;
	git_odb *odb;
	git_rawobj tmp;

    FUNC7(data);

    FUNC0(FUNC4(&odb, "test-objects"));
    FUNC0(FUNC6(&id, data->id));
    FUNC0(FUNC5(&obj, odb, &id));

	tmp.data = obj->buffer;
	tmp.len = obj->cached.size;
	tmp.type = obj->cached.type;

    FUNC1(&tmp, data);

    FUNC3(obj);
	FUNC2(odb);
}