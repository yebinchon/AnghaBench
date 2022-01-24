#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct editorSyntax {char** filematch; } ;
struct TYPE_2__ {struct editorSyntax* syntax; } ;

/* Variables and functions */
 TYPE_1__ E ; 
 struct editorSyntax* HLDB ; 
 unsigned int HLDB_ENTRIES ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 

void FUNC2(char *filename) {
    for (unsigned int j = 0; j < HLDB_ENTRIES; j++) {
        struct editorSyntax *s = HLDB+j;
        unsigned int i = 0;
        while(s->filematch[i]) {
            char *p;
            int patlen = FUNC0(s->filematch[i]);
            if ((p = FUNC1(filename,s->filematch[i])) != NULL) {
                if (s->filematch[i][0] != '.' || p[patlen] == '\0') {
                    E.syntax = s;
                    return;
                }
            }
            i++;
        }
    }
}