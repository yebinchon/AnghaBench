
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BG_BUFFERSIZE ;
 int Com_Error (int ,char*) ;
 int Com_Memcpy (char*,char const*,int) ;
 int ERR_DROP ;
 int bg_buffer_idx ;
 char* bg_string_buffer ;
 int strlen (char const*) ;

char* BG_NewString( const char* str ) {
 char *ptr;
 int len = strlen(str) + 1;
 if ( bg_buffer_idx + len > BG_BUFFERSIZE ) {
  Com_Error( ERR_DROP, "Failed to Allocate new string!" );
 }
 ptr = &bg_string_buffer[bg_buffer_idx];
 Com_Memcpy( ptr, str, len );

 bg_buffer_idx += len;
 return ptr;
}
