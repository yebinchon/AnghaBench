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
struct finfo {char* name; int /*<<< orphan*/  size; } ;
struct buf {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct finfo *finfo, struct buf *buf)
{
    FILE *f;
    
    f = FUNC1(finfo->name, "r");
    if (!f) {
	FUNC2(stderr, "could not open \"%s\" for reading\n", finfo->name);
	FUNC4(EXIT_FAILURE);
    }

    buf->size = FUNC3(buf->start, 1, finfo->size, f);
    if (buf->size != finfo->size) {
	FUNC2(stderr, "unable to read from file \"%s\"\n", finfo->name);
	FUNC4(EXIT_FAILURE);
    }

    FUNC0(f);

    return EXIT_SUCCESS;
}