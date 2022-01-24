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
struct TYPE_3__ {int height; } ;
struct TYPE_4__ {TYPE_1__ font; } ;

/* Variables and functions */
 int border_width ; 
 TYPE_2__ config ; 
 int dialog_height ; 
 int dialog_width ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int margin ; 
 void* message_intro ; 
 void* message_intro2 ; 
 void* message_option_backtrace ; 
 void* message_option_forget ; 
 void* message_option_restart ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(void) {
    border_width = FUNC1(border_width);
    margin = FUNC1(margin);

    int num_lines = 5;
    message_intro = FUNC0("i3 has just crashed. Please report a bug for this.");
    message_intro2 = FUNC0("To debug this problem, you can either attach gdb or choose from the following options:");
    message_option_backtrace = FUNC0("- 'b' to save a backtrace (requires gdb)");
    message_option_restart = FUNC0("- 'r' to restart i3 in-place");
    message_option_forget = FUNC0("- 'f' to forget the previous layout and restart i3");

    int width_longest_message = FUNC2(message_intro2);

    dialog_width = width_longest_message + 2 * border_width + 2 * margin;
    dialog_height = num_lines * config.font.height + 2 * border_width + 2 * margin;
}