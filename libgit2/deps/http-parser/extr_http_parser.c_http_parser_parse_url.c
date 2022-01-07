
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint16_t ;
struct http_parser_url {int port; int field_set; TYPE_1__* field_data; } ;
typedef enum state { ____Placeholder_state } state ;
typedef enum http_parser_url_fields { ____Placeholder_http_parser_url_fields } http_parser_url_fields ;
struct TYPE_2__ {int len; int off; } ;


 int UF_FRAGMENT ;
 int UF_HOST ;
 int UF_MAX ;
 int UF_PATH ;
 int UF_PORT ;
 int UF_QUERY ;
 int UF_SCHEMA ;
 size_t UINT16_MAX ;
 int assert (int) ;
 scalar_t__ http_parse_host (char const*,struct http_parser_url*,int) ;
 int parse_url_char (int,char const) ;
 int s_req_spaces_before_url ;
 unsigned long strtoul (char const*,int *,int) ;

int
http_parser_parse_url(const char *buf, size_t buflen, int is_connect,
                      struct http_parser_url *u)
{
  enum state s;
  const char *p;
  enum http_parser_url_fields uf, old_uf;
  int found_at = 0;

  if (buflen > UINT16_MAX)
    return 1;

  u->port = u->field_set = 0;
  s = is_connect ? 129 : s_req_spaces_before_url;
  uf = old_uf = UF_MAX;

  for (p = buf; p < buf + buflen; p++) {
    s = parse_url_char(s, *p);


    switch (s) {
      case 139:
        return 1;


      case 132:
      case 131:
      case 129:
      case 134:
      case 137:
        continue;

      case 133:
        uf = UF_SCHEMA;
        break;

      case 128:
        found_at = 1;


      case 130:
        uf = UF_HOST;
        break;

      case 136:
        uf = UF_PATH;
        break;

      case 135:
        uf = UF_QUERY;
        break;

      case 138:
        uf = UF_FRAGMENT;
        break;

      default:
        assert(!"Unexpected state");
        return 1;
    }


    if (uf == old_uf) {
      u->field_data[uf].len++;
      continue;
    }

    u->field_data[uf].off = (uint16_t)(p - buf);
    u->field_data[uf].len = 1;

    u->field_set |= (1 << uf);
    old_uf = uf;
  }



  if ((u->field_set & ((1 << UF_SCHEMA) | (1 << UF_HOST))) != 0) {
    if (http_parse_host(buf, u, found_at) != 0) {
      return 1;
    }
  }


  if (is_connect && u->field_set != ((1 << UF_HOST)|(1 << UF_PORT))) {
    return 1;
  }

  if (u->field_set & (1 << UF_PORT)) {

    unsigned long v = strtoul(buf + u->field_data[UF_PORT].off, ((void*)0), 10);


    if (v > 0xffff) {
      return 1;
    }

    u->port = (uint16_t) v;
  }

  return 0;
}
