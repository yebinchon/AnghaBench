#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* start; } ;
struct TYPE_9__ {char* problem; int problem_offset; int unread; TYPE_1__ buffer; } ;
typedef  TYPE_2__ yaml_parser_t ;
struct TYPE_10__ {char* test; char* title; int result; } ;

/* Variables and functions */
 char* bom_original ; 
 TYPE_7__* boms ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char*,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 

int FUNC6(void)
{
    yaml_parser_t parser;
    int failed = 0;
    int k;
    FUNC1("checking boms...\n");
    for (k = 0; boms[k].test; k++) {
        char *title = boms[k].title;
        int check = boms[k].result;
        int result;
        char *start = boms[k].test;
        char *end = start;
        while (*end != '!') end++;
        FUNC1("\t%s: ", title);
        FUNC3(&parser);
        FUNC4(&parser, (unsigned char *)start, end-start);
        result = FUNC5(&parser, end-start);
        if (!result) {
            FUNC1("- (reader error: %s at %d)\n", parser.problem, parser.problem_offset);
            failed++;
        }
        else {
            if (parser.unread != check) {
                FUNC1("- (length=%d while expected length=%d)\n", parser.unread, check);
                failed++;
            }
            else if (FUNC0(parser.buffer.start, bom_original, check) != 0) {
                FUNC1("- (value '%s' does not equal to the original value '%s')\n", parser.buffer.start, bom_original);
                failed++;
            }
            else {
                FUNC1("+\n");
            }
        }
        FUNC2(&parser);
    }
    FUNC1("checking boms: %d fail(s)\n", failed);
    return failed;
}