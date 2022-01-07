
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_subpacket {int class; int type; } ;




 struct el_subpacket* el_process_header_subpacket (struct el_subpacket*) ;
 struct el_subpacket* el_process_subpacket_reg (struct el_subpacket*) ;
 int err_print_prefix ;
 int printk (char*,int ,int,int ) ;

struct el_subpacket *
el_process_subpacket(struct el_subpacket *header)
{
 struct el_subpacket *next = ((void*)0);

 switch(header->class) {
 case 128:

  break;
 case 129:
  next = el_process_header_subpacket(header);
  break;
 default:
  if (((void*)0) == (next = el_process_subpacket_reg(header))) {
   printk("%s** Unexpected header CLASS %d TYPE %d"
          " -- aborting.\n",
          err_print_prefix,
          header->class, header->type);
  }
  break;
 }

 return next;
}
