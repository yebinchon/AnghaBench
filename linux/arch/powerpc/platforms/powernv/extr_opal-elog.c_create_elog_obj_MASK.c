#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  kset; } ;
struct TYPE_9__ {char* name; int mode; } ;
struct TYPE_11__ {size_t size; int /*<<< orphan*/  read; TYPE_1__ attr; } ;
struct elog_obj {size_t size; TYPE_2__ kobj; TYPE_3__ raw_attr; int /*<<< orphan*/ * buffer; void* id; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  elog_kset ; 
 int /*<<< orphan*/  elog_ktype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*) ; 
 int /*<<< orphan*/  raw_attr_read ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static struct elog_obj *FUNC11(uint64_t id, size_t size, uint64_t type)
{
	struct elog_obj *elog;
	int rc;

	elog = FUNC6(sizeof(*elog), GFP_KERNEL);
	if (!elog)
		return NULL;

	elog->kobj.kset = elog_kset;

	FUNC3(&elog->kobj, &elog_ktype);

	FUNC9(&elog->raw_attr);

	elog->raw_attr.attr.name = "raw";
	elog->raw_attr.attr.mode = 0400;
	elog->raw_attr.size = size;
	elog->raw_attr.read = raw_attr_read;

	elog->id = id;
	elog->size = size;
	elog->type = type;

	elog->buffer = FUNC6(elog->size, GFP_KERNEL);

	if (elog->buffer) {
		rc = FUNC7(FUNC0(elog->buffer),
					 elog->size, elog->id);
		if (rc != OPAL_SUCCESS) {
			FUNC8("ELOG: log read failed for log-id=%llx\n",
			       elog->id);
			FUNC1(elog->buffer);
			elog->buffer = NULL;
		}
	}

	rc = FUNC2(&elog->kobj, NULL, "0x%llx", id);
	if (rc) {
		FUNC4(&elog->kobj);
		return NULL;
	}

	rc = FUNC10(&elog->kobj, &elog->raw_attr);
	if (rc) {
		FUNC4(&elog->kobj);
		return NULL;
	}

	FUNC5(&elog->kobj, KOBJ_ADD);

	return elog;
}