
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;

int
dontcall_message_complete_cb (http_parser *p)
{
  if (p) { }
  fprintf(stderr, "\n\n*** on_message_complete() called on paused "
                  "parser ***\n\n");
  abort();
}
