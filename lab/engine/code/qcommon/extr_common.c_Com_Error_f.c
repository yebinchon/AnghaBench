
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int ERR_FATAL ;

__attribute__((used)) static void __attribute__((__noreturn__)) Com_Error_f (void) {
 if ( Cmd_Argc() > 1 ) {
  Com_Error( ERR_DROP, "Testing drop error" );
 } else {
  Com_Error( ERR_FATAL, "Testing fatal error" );
 }
}
