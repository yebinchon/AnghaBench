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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  member_0; } ;
struct file_info {int /*<<< orphan*/  name; int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct file_info *finfo)
{
    struct stat file_stat = {0};
    int fd;

    fd = FUNC5(finfo->name, O_RDONLY, (mode_t)0600);
    if (fd == -1) {
        FUNC0("Error while opening file %s.", finfo->name);
        FUNC2(EXIT_FAILURE);
    }

    if (FUNC3(fd, &file_stat) == -1) {
        FUNC0("Error getting file size for %s.", finfo->name);
        FUNC2(EXIT_FAILURE);
    }

    finfo->size = file_stat.st_size;
    finfo->data = FUNC4(0, finfo->size, PROT_READ, MAP_SHARED, fd, 0);

    if (finfo->data == MAP_FAILED) {
        FUNC0("Error mapping file %s.", finfo->name);
        FUNC2(EXIT_FAILURE);
    }

    FUNC1(fd);
}