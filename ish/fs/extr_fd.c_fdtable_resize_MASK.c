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
struct fdtable {unsigned int size; struct fd** cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef  struct fd* bits_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int _ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd**) ; 
 struct fd** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fd**,struct fd**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fd**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct fdtable *table, unsigned size) {
    // currently the only legitimate use of this is to expand the table
    FUNC1(size > table->size);

    struct fd **files = FUNC3(sizeof(struct fd *) * size);
    if (files == NULL)
        return _ENOMEM;
    FUNC5(files, 0, sizeof(struct fd *) * size);
    if (table->files)
        FUNC4(files, table->files, sizeof(struct fd *) * table->size);

    bits_t *cloexec = FUNC3(FUNC0(size));
    if (cloexec == NULL) {
        FUNC2(files);
        return _ENOMEM;
    }
    FUNC5(cloexec, 0, FUNC0(size));
    if (table->cloexec)
        FUNC4(cloexec, table->cloexec, FUNC0(table->size));

    FUNC2(table->files);
    table->files = files;
    FUNC2(table->cloexec);
    table->cloexec = cloexec;
    table->size = size;
    return 0;
}