
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;

int
dontcall_header_value_cb (http_parser *p, const char *buf, size_t len)
{
  if (p || buf || len) { }
  fprintf(stderr, "\n\n*** on_header_value() called on paused parser ***\n\n");
  abort();
}
