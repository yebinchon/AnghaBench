
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int VMFREE_BUFFERS () ;

__attribute__((used)) static int Hex( int c ) {
 if ( c >= 'a' && c <= 'f' ) {
  return 10 + c - 'a';
 }
 if ( c >= 'A' && c <= 'F' ) {
  return 10 + c - 'A';
 }
 if ( c >= '0' && c <= '9' ) {
  return c - '0';
 }

 VMFREE_BUFFERS();
 Com_Error( ERR_DROP, "Hex: bad char '%c'", c );

 return 0;
}
