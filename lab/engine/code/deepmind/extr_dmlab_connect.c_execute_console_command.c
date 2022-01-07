
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_ExecuteString (char const*) ;

__attribute__((used)) static void execute_console_command(const char* cmd) {
  Cmd_ExecuteString(cmd);
}
