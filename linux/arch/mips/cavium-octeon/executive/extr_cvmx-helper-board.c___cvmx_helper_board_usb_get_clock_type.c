
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum cvmx_helper_board_usb_clock_types { ____Placeholder_cvmx_helper_board_usb_clock_types } cvmx_helper_board_usb_clock_types ;
struct TYPE_2__ {int board_type; } ;
 scalar_t__ OCTEON_IS_OCTEON2 () ;
 int USB_CLOCK_TYPE_CRYSTAL_12 ;
 int USB_CLOCK_TYPE_REF_12 ;
 int USB_CLOCK_TYPE_REF_48 ;
 TYPE_1__* cvmx_sysinfo_get () ;

enum cvmx_helper_board_usb_clock_types __cvmx_helper_board_usb_get_clock_type(void)
{
 switch (cvmx_sysinfo_get()->board_type) {
 case 134:
 case 133:
 case 131:
 case 132:
 case 129:
 case 128:
  return USB_CLOCK_TYPE_CRYSTAL_12;
 case 130:
  return USB_CLOCK_TYPE_REF_12;
 default:
  break;
 }

 if (OCTEON_IS_OCTEON2())
  return USB_CLOCK_TYPE_CRYSTAL_12;
 return USB_CLOCK_TYPE_REF_48;
}
