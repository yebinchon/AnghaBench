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
struct kern {short* version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kern*) ; 

int FUNC1(short int major, short int minor, short int component) {
    struct kern k;
    FUNC0(&k);
    if ( k.version[0] !=  major) return k.version[0] - major;
    if ( k.version[1] !=  minor) return k.version[1] - minor;
    if ( k.version[2] !=  component) return k.version[2] - component;
    return 0;
}