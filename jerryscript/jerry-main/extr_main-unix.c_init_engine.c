
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int jerry_init_flag_t ;


 int assert (int) ;
 int jerry_init (int ) ;
 int jerryx_debugger_after_connect (int) ;
 scalar_t__ jerryx_debugger_rp_create () ;
 int jerryx_debugger_serial_create (char*) ;
 int jerryx_debugger_tcp_create (int ) ;
 scalar_t__ jerryx_debugger_ws_create () ;
 int jerryx_handler_assert ;
 int jerryx_handler_gc ;
 int jerryx_handler_print ;
 int jerryx_handler_resource_name ;
 int register_js_function (char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
init_engine (jerry_init_flag_t flags,
             char *debug_channel,
             char *debug_protocol,
             uint16_t debug_port,
             char *debug_serial_config)
{
  jerry_init (flags);
  if (strcmp (debug_channel, ""))
  {
    bool protocol = 0;

    if (!strcmp (debug_protocol, "tcp"))
    {
      protocol = jerryx_debugger_tcp_create (debug_port);
    }
    else
    {
      assert (!strcmp (debug_protocol, "serial"));
      protocol = jerryx_debugger_serial_create (debug_serial_config);
    }

    if (!strcmp (debug_channel, "rawpacket"))
    {
      jerryx_debugger_after_connect (protocol && jerryx_debugger_rp_create ());
    }
    else
    {
      assert (!strcmp (debug_channel, "websocket"));
      jerryx_debugger_after_connect (protocol && jerryx_debugger_ws_create ());
    }
  }

  register_js_function ("assert", jerryx_handler_assert);
  register_js_function ("gc", jerryx_handler_gc);
  register_js_function ("print", jerryx_handler_print);
  register_js_function ("resourceName", jerryx_handler_resource_name);
}
