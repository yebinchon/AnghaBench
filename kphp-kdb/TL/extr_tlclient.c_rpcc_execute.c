
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tl_scheme_object {int dummy; } ;
struct connection {int In; } ;
struct TYPE_7__ {int tabsize; int indentation; } ;
struct TYPE_6__ {char* buff; } ;


 long long* P ;
 int PACKET_BUFFER_SIZE ;
 int RPC_REQ_ERROR ;
 int RPC_REQ_RESULT ;
 int SKIP_ALL_BYTES ;
 int TL_SECTION_TYPES ;
 int assert (int) ;
 int compiler ;
 int cstr_free (int *) ;
 int expect_input ;
 int fclose (int *) ;
 int fprintf (int *,char*,char*) ;
 char* get_raw_scheme (struct tl_scheme_object*) ;
 int kprintf (char*,long long,long long) ;
 int log_char (char) ;
 int log_errors () ;
 int log_str (char*) ;
 int memcpy (long long*,...) ;
 TYPE_5__ params ;
 int read_in (int *,long long*,int) ;
 long long req_id ;
 int rpcc_log_error (int) ;
 int * scheme_filename ;
 int tl_compiler_clear_errors (int *) ;
 int tl_expression_unserialize (int *,int*,int,int,int ,struct tl_scheme_object**) ;
 int tl_scheme_object_free (struct tl_scheme_object*) ;
 int tl_string_buffer_append_char (TYPE_1__*,int ) ;
 int tl_string_buffer_clear (TYPE_1__*) ;
 int tl_unserialize_rpc_function_result (int *,TYPE_1__*,int*,int,int ,int ) ;
 int typename ;
 scalar_t__ unpack_packet (int *,int,int**,int*) ;
 TYPE_1__ unserialize_buff ;

int rpcc_execute (struct connection *c, int op, int len) {
  if (len > PACKET_BUFFER_SIZE) {
    return SKIP_ALL_BYTES;
  }
  if (op == RPC_REQ_RESULT) {
    long long r;
    assert (read_in (&c->In, P, len) == len);
    memcpy (&r, &P[3], 8);
    if (r != req_id) {
      kprintf ("RPC_REQ_RESULT: req_id = %lld, expected req_id = %lld\n", r, req_id);
      return 0;
    } else {
      int *Q;
      int qlen;
      tl_string_buffer_clear (&unserialize_buff);
      tl_compiler_clear_errors (&compiler);
      if (unpack_packet (&compiler, len, &Q, &qlen) < 0) {
        log_errors ();
        log_str ("unpack packet fail\n");
      } else {
        if (scheme_filename) {
          struct tl_scheme_object *O = ((void*)0);
          tl_compiler_clear_errors (&compiler);
          int r = tl_expression_unserialize (&compiler, Q, qlen, 1 << TL_SECTION_TYPES, typename, &O);
          if (r >= 0 && O != ((void*)0)) {

            char *s = get_raw_scheme (O);
            if (s) {
              fprintf (scheme_filename, "%s", s);
            }
            tl_scheme_object_free (O);
          }
          fclose (scheme_filename);
          scheme_filename = ((void*)0);
        } else {
          if (qlen && Q[0] == RPC_REQ_ERROR) {
            int o = 4 * (qlen - 1);
            memcpy (P+5, Q+1, o);
            rpcc_log_error (o + 24);
            expect_input = 1;
            return 0;
          }
          int r = tl_unserialize_rpc_function_result (&compiler, &unserialize_buff, Q, qlen, typename, params.indentation);
          if (r < 0) {
            log_errors ();
          } else {
            if (r != qlen) {
              kprintf ("Warning: unserialize %d ints of result, but result contains %d ints.\n", r, qlen);
            }
            tl_string_buffer_append_char (&unserialize_buff, 0);
            char *s = unserialize_buff.buff;
            while (*s) {
              if (*s == '\t') {
                int k;
                for (k = 0; k < params.tabsize; k++) {
                  log_char (' ');
                }
              } else {
                log_char (*s);
              }
              s++;
            }
            log_char ('\n');
          }
        }
      }
      cstr_free (&typename);
      expect_input = 1;
    }
    return 0;
  } if (op == RPC_REQ_ERROR) {
    long long received_req_id;
    assert (read_in (&c->In, P, len) == len);
    memcpy (&received_req_id, &P[3], 8);
    if (received_req_id != req_id) {
      kprintf ("RPC_REQ_ERROR: req_id = %lld, expected req_id = %lld\n", received_req_id, req_id);
      return 0;
    } else {
      rpcc_log_error (len);
    }
    cstr_free (&typename);
    expect_input = 1;
    return 0;
  } else {
    return SKIP_ALL_BYTES;
  }
}
