
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSHeaders ;


 int free (int *) ;
 int ws_free_header_fields (int *) ;

__attribute__((used)) static void
ws_clear_handshake_headers (WSHeaders * headers)
{
  ws_free_header_fields (headers);
  free (headers);
  headers = ((void*)0);
}
