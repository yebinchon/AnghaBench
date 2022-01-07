
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int headers_complete_cb (int *) ;

int
connect_headers_complete_cb (http_parser *p)
{
  headers_complete_cb(p);
  return 1;
}
