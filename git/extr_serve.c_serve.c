
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serve_options {scalar_t__ stateless_rpc; scalar_t__ advertise_capabilities; } ;


 int advertise_capabilities () ;
 int packet_write_fmt (int,char*) ;
 scalar_t__ process_request () ;

void serve(struct serve_options *options)
{
 if (options->advertise_capabilities || !options->stateless_rpc) {

  packet_write_fmt(1, "version 2\n");

  advertise_capabilities();




  if (options->advertise_capabilities)
   return;
 }





 if (options->stateless_rpc) {
  process_request();
 } else {
  for (;;)
   if (process_request())
    break;
 }
}
