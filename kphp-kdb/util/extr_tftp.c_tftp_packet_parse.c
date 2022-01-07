
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {char* msg; void* code; } ;
struct TYPE_12__ {void* block; } ;
struct TYPE_11__ {char* d; int len; void* block; } ;
struct TYPE_10__ {char* filename; char* mode; } ;
struct TYPE_14__ {TYPE_4__ error; TYPE_3__ ack; TYPE_2__ data; TYPE_1__ rrq; } ;
struct TYPE_15__ {char* error_msg; int opcode; void* error_code; TYPE_5__ u; } ;
typedef TYPE_6__ tftp_packet_t ;


 void* get_ushort (char*) ;
 int memset (TYPE_6__*,int ,int) ;



 int tftp_fetch_string (char*,int) ;
 void* tftp_illegal_operation ;

 int tftp_parse_options (TYPE_6__*,char*,int) ;

 void* tftp_undef ;

 char tolower (char) ;

int tftp_packet_parse (tftp_packet_t *p, char *in, int avail_in) {
  memset (p, 0, sizeof (*p));
  if (avail_in < 2) {
    p->error_code = tftp_undef;
    p->error_msg = "Format error: opcode expected, but packet is too short";
    return -1;
  }
  p->opcode = get_ushort (in);
  in += 2;
  avail_in -= 2;
  int i, l;
  switch (p->opcode) {
    case 129:
    case 128:
      l = tftp_fetch_string (in, avail_in);
      if (l < 0) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: filename expected, but end of packet found.";
        return -1;
      }
      p->u.rrq.filename = in;
      in += l;
      avail_in -= l;
      l = tftp_fetch_string (in, avail_in);
      if (l < 0) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: mode expected, but end of packet found.";
        return -1;
      }
      p->u.rrq.mode = in;
      for (i = 0; i < l; i++) {
        in[i] = tolower (in[i]);
      }
      in += l;
      avail_in -= l;
      return tftp_parse_options (p, in, avail_in);
    case 132:
      if (avail_in < 2) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: block expected, but packet is too short";
        return -1;
      }
      p->u.data.block = get_ushort (in);
      in += 2;
      avail_in -= 2;
      p->u.data.d = in;
      p->u.data.len = avail_in;
      return 0;
    case 133:
      if (avail_in < 2) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: block expected, but packet is too short";
        return -1;
      }
      p->u.ack.block = get_ushort (in);
      in += 2;
      avail_in -= 2;
      break;
    case 131:
      if (avail_in < 2) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: error code expected, but packet is too short";
        return -1;
      }
      p->u.error.code = get_ushort (in);
      in += 2;
      avail_in -= 2;
      l = tftp_fetch_string (in, avail_in);
      if (l < 0) {
        p->error_code = tftp_undef;
        p->error_msg = "Format error: error message expected, but end of packet found.";
        return -1;
      }
      p->u.error.msg = in;
      in += l;
      avail_in -= l;
      break;
   case 130:
     return tftp_parse_options (p, in, avail_in);
   default:
      p->error_code = tftp_illegal_operation;
      return -1;
  }
  if (avail_in) {
    p->error_code = tftp_undef;
    p->error_msg = "Format error: packet contains extra data";
    return -1;
  }
  return 0;
}
