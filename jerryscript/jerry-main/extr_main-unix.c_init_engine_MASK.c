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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  jerry_init_flag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  jerryx_handler_assert ; 
 int /*<<< orphan*/  jerryx_handler_gc ; 
 int /*<<< orphan*/  jerryx_handler_print ; 
 int /*<<< orphan*/  jerryx_handler_resource_name ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9 (jerry_init_flag_t flags, /**< initialized flags for the engine */
             char *debug_channel, /**< enable the debugger init or not */
             char *debug_protocol, /**< enable the debugger init or not */
             uint16_t debug_port, /**< the debugger port for tcp protocol */
             char *debug_serial_config) /**< configuration string for serial protocol */
{
  FUNC1 (flags);
  if (FUNC8 (debug_channel, ""))
  {
    bool protocol = false;

    if (!FUNC8 (debug_protocol, "tcp"))
    {
      protocol = FUNC5 (debug_port);
    }
    else
    {
      FUNC0 (!FUNC8 (debug_protocol, "serial"));
      protocol = FUNC4 (debug_serial_config);
    }

    if (!FUNC8 (debug_channel, "rawpacket"))
    {
      FUNC2 (protocol && FUNC3 ());
    }
    else
    {
      FUNC0 (!FUNC8 (debug_channel, "websocket"));
      FUNC2 (protocol && FUNC6 ());
    }
  }

  FUNC7 ("assert", jerryx_handler_assert);
  FUNC7 ("gc", jerryx_handler_gc);
  FUNC7 ("print", jerryx_handler_print);
  FUNC7 ("resourceName", jerryx_handler_resource_name);
}