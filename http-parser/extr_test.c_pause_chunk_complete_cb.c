
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int chunk_complete_cb (int *) ;
 int * current_pause_parser ;
 int http_parser_pause (int *,int) ;
 int settings_dontcall ;

int
pause_chunk_complete_cb (http_parser *p)
{
  http_parser_pause(p, 1);
  *current_pause_parser = settings_dontcall;
  return chunk_complete_cb(p);
}
