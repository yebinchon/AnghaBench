#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t count; TYPE_1__* trailers; } ;
typedef  TYPE_2__ git_message_trailer_array ;
struct TYPE_9__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_3__ git_message_trailer ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,char const*) ; 

__attribute__((used)) static void FUNC4(const char *message, git_message_trailer *trailers)
{
	git_message_trailer_array arr;
	size_t i;

	int rc = FUNC3(&arr, message);

	FUNC0(0, rc);

	for(i=0; i<arr.count; i++) {
		FUNC1(arr.trailers[i].key, trailers[i].key);
		FUNC1(arr.trailers[i].value, trailers[i].value);
	}

	FUNC0(0, rc);

	FUNC2(&arr);
}