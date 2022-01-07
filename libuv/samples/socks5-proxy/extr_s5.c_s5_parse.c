
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int s5_err ;
struct TYPE_3__ {int state; int arg0; int arg1; int userlen; int* username; int passlen; int* password; int* daddr; int dport; int atyp; int cmd; int methods; } ;
typedef TYPE_1__ s5_ctx ;


 int S5_AUTH_GSSAPI ;
 int S5_AUTH_NONE ;
 int S5_AUTH_PASSWD ;
 int abort () ;
 int s5_atyp_host ;
 int s5_atyp_ipv4 ;
 int s5_atyp_ipv6 ;





 int s5_auth_select ;
 int s5_auth_verify ;
 int s5_bad_atyp ;
 int s5_bad_cmd ;
 int s5_bad_version ;
 int s5_cmd_tcp_connect ;
 int s5_cmd_udp_assoc ;

 int s5_exec_cmd ;


 int s5_ok ;
s5_err s5_parse(s5_ctx *cx, uint8_t **data, size_t *size) {
  s5_err err;
  uint8_t *p;
  uint8_t c;
  size_t i;
  size_t n;

  p = *data;
  n = *size;
  i = 0;

  while (i < n) {
    c = p[i];
    i += 1;
    switch (cx->state) {
      case 128:
        if (c != 5) {
          err = s5_bad_version;
          goto out;
        }
        cx->state = 137;
        break;

      case 137:
        cx->arg0 = 0;
        cx->arg1 = c;
        cx->state = 138;
        break;

      case 138:
        if (cx->arg0 < cx->arg1) {
          switch (c) {
            case 0:
              cx->methods |= S5_AUTH_NONE;
              break;
            case 1:
              cx->methods |= S5_AUTH_GSSAPI;
              break;
            case 2:
              cx->methods |= S5_AUTH_PASSWD;
              break;

          }
          cx->arg0 += 1;
        }
        if (cx->arg0 == cx->arg1) {
          err = s5_auth_select;
          goto out;
        }
        break;

      case 140:
        if (c != 1) {
          err = s5_bad_version;
          goto out;
        }
        cx->state = 142;
        break;

      case 142:
        cx->arg0 = 0;
        cx->userlen = c;
        cx->state = 141;
        break;

      case 141:
        if (cx->arg0 < cx->userlen) {
          cx->username[cx->arg0] = c;
          cx->arg0 += 1;
        }
        if (cx->arg0 == cx->userlen) {
          cx->username[cx->userlen] = '\0';
          cx->state = 144;
        }
        break;

      case 144:
        cx->arg0 = 0;
        cx->passlen = c;
        cx->state = 143;
        break;

      case 143:
        if (cx->arg0 < cx->passlen) {
          cx->password[cx->arg0] = c;
          cx->arg0 += 1;
        }
        if (cx->arg0 == cx->passlen) {
          cx->password[cx->passlen] = '\0';
          cx->state = 129;
          err = s5_auth_verify;
          goto out;
        }
        break;

      case 129:
        if (c != 5) {
          err = s5_bad_version;
          goto out;
        }
        cx->state = 134;
        break;

      case 134:
        switch (c) {
          case 1:
            cx->cmd = s5_cmd_tcp_connect;
            break;
          case 3:
            cx->cmd = s5_cmd_udp_assoc;
            break;
          default:
            err = s5_bad_cmd;
            goto out;
        }
        cx->state = 130;
        break;

      case 130:
        cx->state = 136;
        break;

      case 136:
        cx->arg0 = 0;
        switch (c) {
          case 1:
            cx->state = 133;
            cx->atyp = s5_atyp_ipv4;
            cx->arg1 = 4;
            break;
          case 3:
            cx->state = 135;
            cx->atyp = s5_atyp_host;
            cx->arg1 = 0;
            break;
          case 4:
            cx->state = 133;
            cx->atyp = s5_atyp_ipv6;
            cx->arg1 = 16;
            break;
          default:
            err = s5_bad_atyp;
            goto out;
        }
        break;

      case 135:
        cx->arg1 = c;
        cx->state = 133;
        break;

      case 133:
        if (cx->arg0 < cx->arg1) {
          cx->daddr[cx->arg0] = c;
          cx->arg0 += 1;
        }
        if (cx->arg0 == cx->arg1) {
          cx->daddr[cx->arg1] = '\0';
          cx->state = 132;
        }
        break;

      case 132:
        cx->dport = c << 8;
        cx->state = 131;
        break;

      case 131:
        cx->dport |= c;
        cx->state = 139;
        err = s5_exec_cmd;
        goto out;

      case 139:
        break;

      default:
        abort();
    }
  }
  err = s5_ok;

out:
  *data = p + i;
  *size = n - i;
  return err;
}
