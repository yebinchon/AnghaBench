
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int xstop_type; } ;
struct TYPE_4__ {TYPE_1__ xstop_error; } ;
struct OpalHMIEvent {TYPE_2__ u; } ;





 int print_core_checkstop_reason (char const*,struct OpalHMIEvent*) ;
 int print_npu_checkstop_reason (char const*,struct OpalHMIEvent*) ;
 int print_nx_checkstop_reason (char const*,struct OpalHMIEvent*) ;
 int printk (char*,char const*,int) ;

__attribute__((used)) static void print_checkstop_reason(const char *level,
     struct OpalHMIEvent *hmi_evt)
{
 uint8_t type = hmi_evt->u.xstop_error.xstop_type;
 switch (type) {
 case 130:
  print_core_checkstop_reason(level, hmi_evt);
  break;
 case 128:
  print_nx_checkstop_reason(level, hmi_evt);
  break;
 case 129:
  print_npu_checkstop_reason(level, hmi_evt);
  break;
 default:
  printk("%s	Unknown Malfunction Alert of type %d\n",
         level, type);
  break;
 }
}
