
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tftp_opcode { ____Placeholder_tftp_opcode } tftp_opcode ;
char *show_opcode (enum tftp_opcode o) {
  switch (o) {
    case 129: return "Read request";
    case 128: return "Write request";
    case 132: return "Data";
    case 133: return "Acknowledgement";
    case 131: return "Error";
    case 130: return "Option Acknowledgement";
  }
  return ((void*)0);
}
