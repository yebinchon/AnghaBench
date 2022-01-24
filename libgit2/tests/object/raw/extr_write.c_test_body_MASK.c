#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ object_data ;
struct TYPE_16__ {int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_14__ {int /*<<< orphan*/  type; int /*<<< orphan*/  size; } ;
struct TYPE_17__ {TYPE_1__ cached; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_4__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  odb_dir ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

void FUNC13(object_data *d, git_rawobj *o)
{
   git_odb *db;
   git_oid id1, id2;
   git_odb_object *obj;
   git_rawobj tmp;

   FUNC10();
   FUNC2(FUNC6(&db, odb_dir));
   FUNC2(FUNC9(&id1, d->id));

   FUNC12(&id2, db, o);
   FUNC1(FUNC8(&id1, &id2) == 0);
   FUNC0(d);

   FUNC2(FUNC7(&obj, db, &id1));

   tmp.data = obj->buffer;
   tmp.len = obj->cached.size;
   tmp.type = obj->cached.type;

   FUNC3(&tmp, o);

   FUNC5(obj);
   FUNC4(db);
   FUNC11(d);
}