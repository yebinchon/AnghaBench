#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_entry {TYPE_2__* meta; } ;
struct TYPE_3__ {struct proc_entry entry; } ;
struct fd {TYPE_1__ proc; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;

/* Variables and functions */
 int MAX_NAME ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_entry*,char*) ; 
 TYPE_2__ proc_root ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct fd *fd, char *buf) {
    char *p = buf + MAX_PATH - 1;
    size_t n = 0;
    p[0] = '\0';
    struct proc_entry entry = fd->proc.entry;
    while (entry.meta != &proc_root) {
        char component[MAX_NAME];
        FUNC2(&entry, component);
        size_t component_len = FUNC3(component) + 1; // plus one for the slash
        p -= component_len;
        n += component_len;
        *p = '/';
        FUNC0(p + 1, component, component_len);
        entry.meta = entry.meta->parent;
    }
    FUNC1(buf, p, n + 1); // plus one for the null
    return 0;
}