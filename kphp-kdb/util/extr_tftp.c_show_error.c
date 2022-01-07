
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tftp_error { ____Placeholder_tftp_error } tftp_error ;
char *show_error (enum tftp_error e) {
  switch (e) {
    case 129: return "Not defined";
    case 133: return "File not found";
    case 136: return "Access violation";
    case 135: return "Disk full or allocation exceeded";
    case 132: return "Illegal TFTP operation";
    case 128: return "Unknown transfer ID";
    case 134: return "File already exists";
    case 131: return "No such user";
    case 130: return "Option negotiation error";
  }
  return "Bad error code";
}
