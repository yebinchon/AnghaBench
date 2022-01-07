
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ev7_pal_zbox_subpacket {int dummy; } ;
struct ev7_pal_rbox_subpacket {int dummy; } ;
struct ev7_pal_processor_subpacket {int dummy; } ;
struct ev7_pal_logout_subpacket {int subpacket_count; } ;
struct ev7_pal_io_subpacket {int dummy; } ;
struct ev7_pal_environmental_subpacket {int dummy; } ;
struct ev7_lf_subpackets {struct ev7_pal_environmental_subpacket** env; struct ev7_pal_io_subpacket* io; struct ev7_pal_zbox_subpacket* zbox; struct ev7_pal_rbox_subpacket* rbox; struct ev7_pal_processor_subpacket* ev7; struct ev7_pal_logout_subpacket* logout; } ;
struct TYPE_3__ {scalar_t__ data_start; } ;
struct TYPE_4__ {TYPE_1__ raw; } ;
struct el_subpacket {scalar_t__ class; scalar_t__ type; TYPE_2__ by_type; scalar_t__ length; } ;


 scalar_t__ EL_CLASS__HEADER ;
 scalar_t__ EL_CLASS__PAL ;
 scalar_t__ EL_TYPE__HEADER__LOGOUT_FRAME ;
 scalar_t__ EL_TYPE__PAL__LOGOUT_FRAME ;
 int err_print_prefix ;
 size_t ev7_lf_env_index (int) ;
 int printk (char*,int ,scalar_t__,int) ;

struct ev7_lf_subpackets *
ev7_collect_logout_frame_subpackets(struct el_subpacket *el_ptr,
        struct ev7_lf_subpackets *lf_subpackets)
{
 struct el_subpacket *subpacket;
 int i;





 if (el_ptr->class != EL_CLASS__HEADER ||
     el_ptr->type != EL_TYPE__HEADER__LOGOUT_FRAME)
  return ((void*)0);




 el_ptr = (struct el_subpacket *)
  ((unsigned long)el_ptr + el_ptr->length);




 if (el_ptr->class != EL_CLASS__PAL ||
     el_ptr->type != EL_TYPE__PAL__LOGOUT_FRAME)
  return ((void*)0);

 lf_subpackets->logout = (struct ev7_pal_logout_subpacket *)
  el_ptr->by_type.raw.data_start;




 subpacket = (struct el_subpacket *)
  ((unsigned long)el_ptr + el_ptr->length);
 for (i = 0;
      subpacket && i < lf_subpackets->logout->subpacket_count;
      subpacket = (struct el_subpacket *)
       ((unsigned long)subpacket + subpacket->length), i++) {



  if (subpacket->class != EL_CLASS__PAL) {
   printk("%s**UNEXPECTED SUBPACKET CLASS %d "
          "IN LOGOUT FRAME (packet %d\n",
          err_print_prefix, subpacket->class, i);
   return ((void*)0);
  }




  switch(subpacket->type) {
  case 130:
   lf_subpackets->ev7 =
    (struct ev7_pal_processor_subpacket *)
    subpacket->by_type.raw.data_start;
   break;

  case 129:
   lf_subpackets->rbox = (struct ev7_pal_rbox_subpacket *)
    subpacket->by_type.raw.data_start;
   break;

  case 128:
   lf_subpackets->zbox = (struct ev7_pal_zbox_subpacket *)
    subpacket->by_type.raw.data_start;
   break;

  case 131:
   lf_subpackets->io = (struct ev7_pal_io_subpacket *)
    subpacket->by_type.raw.data_start;
   break;

  case 137:
  case 138:
  case 132:
  case 135:
  case 133:
  case 134:
  case 136:
   lf_subpackets->env[ev7_lf_env_index(subpacket->type)] =
     (struct ev7_pal_environmental_subpacket *)
    subpacket->by_type.raw.data_start;
   break;

  default:



   return ((void*)0);
  }
 }

 return lf_subpackets;
}
