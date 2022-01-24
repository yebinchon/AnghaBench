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
struct object_directory {struct object_directory* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_directory*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_directory*) ; 

__attribute__((used)) static void FUNC2(struct object_directory *odb)
{
	FUNC0(odb->path);
	FUNC1(odb);
	FUNC0(odb);
}