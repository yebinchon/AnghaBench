#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct item {int extra; } ;
struct index_item {int extra; } ;

/* Variables and functions */
 int FLAG_DELETED ; 
 int /*<<< orphan*/  ONLY_FIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  del_item_instances ; 
 int /*<<< orphan*/  del_items ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 
 struct index_item* FUNC2 (long long) ; 
 struct item* FUNC3 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct item*) ; 
 int /*<<< orphan*/  mod_items ; 

__attribute__((used)) static int FUNC5 (long long item_id) {
  struct item *I = FUNC3 (item_id, ONLY_FIND);
  struct index_item *II = FUNC2 (item_id);
  if (II) {
    II->extra |= FLAG_DELETED;
    mod_items++;
    FUNC0 (!I);
    return 1;
  }
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }
  FUNC1 (I);
  FUNC4 (I);
  del_items++;
  del_item_instances++;
  return 1;
}