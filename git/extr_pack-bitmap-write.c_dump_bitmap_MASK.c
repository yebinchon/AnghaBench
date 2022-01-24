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
struct hashfile {int dummy; } ;
struct ewah_bitmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct ewah_bitmap*,int /*<<< orphan*/ ,struct hashfile*) ; 
 int /*<<< orphan*/  hashwrite_ewah_helper ; 

__attribute__((used)) static inline void FUNC2(struct hashfile *f, struct ewah_bitmap *bitmap)
{
	if (FUNC1(bitmap, hashwrite_ewah_helper, f) < 0)
		FUNC0("Failed to write bitmap index");
}