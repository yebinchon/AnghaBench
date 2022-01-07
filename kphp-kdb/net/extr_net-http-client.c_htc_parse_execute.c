
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_data {int response_code; int data_size; int wlen; char* word; int response_words; int response_flags; scalar_t__ location_offset; scalar_t__ header_size; int location_size; scalar_t__ first_line_size; int http_ver; } ;
struct connection {scalar_t__ status; int parse_state; int In; int Q; } ;
struct TYPE_2__ {int (* execute ) (struct connection*,int) ;} ;


 struct htc_data* HTC_DATA (struct connection*) ;
 TYPE_1__* HTC_FUNC (struct connection*) ;
 int HTTP_V10 ;
 int HTTP_V11 ;
 scalar_t__ MAX_HTTP_HEADER_SIZE ;
 int NEED_MORE_BYTES ;
 int RF_CONNECTION ;
 int RF_DATASIZE ;
 int RF_ERROR ;
 int RF_KEEPALIVE ;
 int RF_LOCATION ;
 int SKIP_ALL_BYTES ;
 int advance_skip_read_ptr (int *,long long) ;
 int assert (int) ;
 scalar_t__ conn_reading_answer ;
 scalar_t__ conn_running ;
 scalar_t__ conn_wait_aio ;
 scalar_t__ conn_wait_answer ;
 scalar_t__ conn_write_close ;
 int htc_default_execute (struct connection*,int) ;
 void* htrt_error ;
 int htrt_none ;
 int http_bad_response_headers ;
 int memcmp (char*,char*,int) ;
 int memset (struct htc_data*,int ,int) ;
 int nbit_advance (int *,int) ;
 char* nbit_get_ptr (int *) ;
 int nbit_ready_bytes (int *) ;
 int nbit_set (int *,int *) ;
 int outbound_http_queries ;
 int strncasecmp (char*,char*,int) ;
 int strtoul (char*,char**,int) ;
 int stub1 (struct connection*,int) ;

int htc_parse_execute (struct connection *c) {
  struct htc_data *D = HTC_DATA(c);
  char *ptr, *ptr_s, *ptr_e;
  int len;
  long long tt;

  while (c->status == conn_wait_answer || c->status == conn_reading_answer) {
    len = nbit_ready_bytes (&c->Q);
    ptr = ptr_s = nbit_get_ptr (&c->Q);
    ptr_e = ptr + len;
    if (len <= 0) {
      break;
    }

    while (ptr < ptr_e && c->parse_state != 140) {

      switch (c->parse_state) {
      case 130:

 memset (D, 0, sizeof (*D));
 D->response_code = htrt_none;
 D->data_size = -1;
 c->parse_state = 134;

      case 134:

 while (ptr < ptr_e && ((unsigned) *ptr > ' ')) {
   if (D->wlen < 15) {
     D->word[D->wlen] = *ptr;
   }
   D->wlen++;
   ptr++;
 }
 if (D->wlen > 4096) {
   c->parse_state = 138;
   break;
 }
 if (ptr == ptr_e) {
   break;
 }
 c->parse_state = 133;
 D->response_words++;
 if (D->response_words == 1) {
   if (!memcmp (D->word, "HTTP/1.0", 8)) {
     D->http_ver = HTTP_V10;
     D->response_flags &= ~RF_KEEPALIVE;
   } else if (!memcmp (D->word, "HTTP/1.1", 8)) {
     D->http_ver = HTTP_V11;
     D->response_flags |= RF_KEEPALIVE;
   } else {
     c->parse_state = 131;
     D->response_flags |= RF_ERROR;
   }
 } else if (D->response_words == 2) {
   D->response_code = htrt_error;
   if (D->wlen == 3) {
     D->word[3] = 0;
     char *tmp;
     D->response_code = strtoul (D->word, &tmp, 10);
     if (tmp != D->word + 3 || D->response_code < 100 || D->response_code > 599) {
       D->response_code = htrt_error;
     }
   }
   if (D->response_code == htrt_error) {
     D->response_flags |= RF_ERROR;
   }
   c->parse_state = 131;
 } else {
   assert (D->response_flags & (RF_LOCATION | RF_CONNECTION));
   if (D->wlen) {
     if (D->response_flags & RF_LOCATION) {
       D->location_offset = D->header_size;
       D->location_size = D->wlen;
     } else {
       if (D->wlen == 10 && !strncasecmp (D->word, "keep-alive", 10)) {
  D->response_flags |= RF_KEEPALIVE;
       } else if (D->wlen == 5 && !strncasecmp (D->word, "close", 5)) {
  D->response_flags &= ~RF_KEEPALIVE;
       }
     }
   }
   D->response_flags &= ~(RF_LOCATION | RF_CONNECTION);
   c->parse_state = 132;
 }
 D->header_size += D->wlen;
 break;

      case 133:
      case 132:

 while (D->header_size < MAX_HTTP_HEADER_SIZE && ptr < ptr_e && (*ptr == ' ' || (*ptr == '\t' && D->response_words >= 8))) {
   D->header_size++;
   ptr++;
 }
 if (D->header_size >= MAX_HTTP_HEADER_SIZE) {
   c->parse_state = 138;
   break;
 }
 if (ptr == ptr_e) {
   break;
 }
 if (c->parse_state == 132) {
   c->parse_state = 139;
   break;
 }
 if (D->response_words < 2) {
   D->wlen = 0;
   c->parse_state = 134;
 } else {
   assert (D->response_words >= 3);
   if (D->response_flags & RF_DATASIZE) {
     if (D->data_size != -1) {
       c->parse_state = 131;
       D->response_flags |= RF_ERROR;
     } else {
       c->parse_state = 136;
       D->data_size = 0;
     }
   } else if (D->response_flags & (RF_LOCATION | RF_CONNECTION)) {
     D->wlen = 0;
     c->parse_state = 134;
   } else {
     c->parse_state = 131;
   }
 }
 break;
      case 135:

 while (ptr < ptr_e && *ptr != ':' && *ptr > ' ') {
   if (D->wlen < 15) {
     D->word[D->wlen] = *ptr;
   }
   D->wlen++;
   ptr++;
 }
 if (D->wlen > 4096) {
   c->parse_state = 138;
   break;
 }
 if (ptr == ptr_e) {
   break;
 }

 if (*ptr != ':') {
   D->header_size += D->wlen;
   c->parse_state = 131;
   D->response_flags |= RF_ERROR;
   break;
 }

 ptr++;

 if (D->wlen == 8 && !strncasecmp (D->word, "location", 8)) {
   D->response_flags |= RF_LOCATION;
 } else if (D->wlen == 10 && !strncasecmp (D->word, "connection", 10)) {
   D->response_flags |= RF_CONNECTION;
 } else if (D->wlen == 14 && !strncasecmp (D->word, "content-length", 14)) {
   D->response_flags |= RF_DATASIZE;
 } else {
   D->response_flags &= ~(RF_LOCATION | RF_DATASIZE | RF_CONNECTION);
 }

 D->header_size += D->wlen + 1;
 c->parse_state = 133;
 break;

      case 136:


 tt = D->data_size;
 while (ptr < ptr_e && *ptr >= '0' && *ptr <= '9') {
   if (tt >= 0x7fffffffL / 10) {
     D->response_flags |= RF_ERROR;
     c->parse_state = 131;
     break;
   }
   tt = tt*10 + (*ptr - '0');
   ptr++;
   D->header_size++;
   D->response_flags &= ~RF_DATASIZE;
 }

 D->data_size = tt;
 if (ptr == ptr_e) {
   break;
 }

 if (D->response_flags & RF_DATASIZE) {
   D->response_flags |= RF_ERROR;
   c->parse_state = 131;
 } else {
   c->parse_state = 132;
 }
 break;

      case 131:


 while (D->header_size < MAX_HTTP_HEADER_SIZE && ptr < ptr_e && (*ptr != '\r' && *ptr != '\n')) {
   D->header_size++;
   ptr++;
 }
 if (D->header_size >= MAX_HTTP_HEADER_SIZE) {
   c->parse_state = 138;
   break;
 }
 if (ptr == ptr_e) {
   break;
 }

 c->parse_state = 139;

      case 139:

 if (ptr == ptr_e) {
   break;
 }
 if (*ptr == '\r') {
   ptr++;
   D->header_size++;
 }
 c->parse_state = 128;

      case 128:


 if (ptr == ptr_e) {
   break;
 }
 if (++D->response_words < 8) {
   D->response_words = 8;
   if (D->response_flags & RF_ERROR) {
     c->parse_state = 138;
     break;
   }
 }

 if (*ptr != '\n') {
   D->response_flags |= RF_ERROR;
   c->parse_state = 131;
   break;
 }

 ptr++;
 D->header_size++;

 c->parse_state = 137;

      case 137:


 if (ptr == ptr_e) {
   break;
 }

 if (!D->first_line_size) {
   D->first_line_size = D->header_size;
 }

 if (*ptr == '\r') {
   ptr++;
   D->header_size++;
   c->parse_state = 129;
   break;
 }
 if (*ptr == '\n') {
   c->parse_state = 129;
   break;
 }

 if (D->response_flags & RF_ERROR) {
   c->parse_state = 131;
 } else {
   D->wlen = 0;
   c->parse_state = 135;
 }
 break;

      case 129:


 if (ptr == ptr_e) {
   break;
 }
 if (*ptr != '\n') {
   c->parse_state = 138;
   break;
 }
 ptr++;
 D->header_size++;

 if (!D->first_line_size) {
   D->first_line_size = D->header_size;
 }

 c->parse_state = 140;

      case 140:

 break;

      case 138:

 D->response_flags |= RF_ERROR;
 c->parse_state = 140;
 break;

      default:
 assert (0);
      }
    }

    len = ptr - ptr_s;
    nbit_advance (&c->Q, len);

    if (c->parse_state == 140) {
      if (D->header_size >= MAX_HTTP_HEADER_SIZE) {
        D->response_flags |= RF_ERROR;
      }

      if (D->response_flags & RF_ERROR) {
 D->response_code = -1;
        http_bad_response_headers++;
      }

      c->status = conn_running;
      if (!HTC_FUNC(c)->execute) {
 HTC_FUNC(c)->execute = htc_default_execute;
      }
      int res = HTC_FUNC(c)->execute (c, D->response_code);
      outbound_http_queries++;
      if (res > 0) {
 c->status = conn_reading_answer;
 return res;
      } else if (res < 0) {
 if (res == SKIP_ALL_BYTES) {
   assert (advance_skip_read_ptr (&c->In, D->header_size) == D->header_size);
   if (D->data_size > 0) {
     len = advance_skip_read_ptr (&c->In, D->data_size);
     if (len < D->data_size) {
       c->parse_state = 130;
       if (c->status == conn_running) {
  c->status = conn_wait_answer;
       }
       return len - D->data_size;
     }
   }
 } else {
   D->response_flags &= ~RF_ERROR;
 }
      }
      if (c->status == conn_running) {
 c->status = conn_wait_answer;
      }

      if (D->response_flags & RF_ERROR) {
        assert (c->status == conn_wait_answer);
        D->response_flags &= ~RF_KEEPALIVE;
      }
      if (c->status == conn_wait_answer && !(D->response_flags & RF_KEEPALIVE)) {
        c->status = conn_write_close;
        c->parse_state = -1;
        return 0;
      }
      if (c->status != conn_wait_aio) {
        c->parse_state = 130;
      }
      nbit_set (&c->Q, &c->In);
    }
  }
  if (c->status == conn_reading_answer || c->status == conn_wait_aio) {
    return NEED_MORE_BYTES;
  }
  return 0;
}
