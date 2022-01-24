#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tl_scheme_object {int dummy; } ;
struct connection {int /*<<< orphan*/  In; } ;
struct TYPE_7__ {int tabsize; int /*<<< orphan*/  indentation; } ;
struct TYPE_6__ {char* buff; } ;

/* Variables and functions */
 long long* P ; 
 int PACKET_BUFFER_SIZE ; 
 int RPC_REQ_ERROR ; 
 int RPC_REQ_RESULT ; 
 int SKIP_ALL_BYTES ; 
 int TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  compiler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int expect_input ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC4 (struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC5 (char*,long long,long long) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (long long*,...) ; 
 TYPE_5__ params ; 
 int FUNC10 (int /*<<< orphan*/ *,long long*,int) ; 
 long long req_id ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * scheme_filename ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ,struct tl_scheme_object**) ; 
 int /*<<< orphan*/  FUNC14 (struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typename ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int,int**,int*) ; 
 TYPE_1__ unserialize_buff ; 

int FUNC19 (struct connection *c, int op, int len) {
  if (len > PACKET_BUFFER_SIZE) {
    return SKIP_ALL_BYTES;
  }
  if (op == RPC_REQ_RESULT) {
    long long r;
    FUNC0 (FUNC10 (&c->In, P, len) == len);
    FUNC9 (&r, &P[3], 8);
    if (r != req_id) {
      FUNC5 ("RPC_REQ_RESULT: req_id = %lld, expected req_id = %lld\n", r, req_id);
      return 0;
    } else {
      int *Q;
      int qlen;
      FUNC16 (&unserialize_buff);
      FUNC12 (&compiler);
      if (FUNC18 (&compiler, len, &Q, &qlen) < 0) {
        FUNC7 ();
        FUNC8 ("unpack packet fail\n");
      } else {
        if (scheme_filename) {
          struct tl_scheme_object *O = NULL;
          FUNC12 (&compiler);
          int r = FUNC13 (&compiler, Q, qlen, 1 << TL_SECTION_TYPES, typename, &O);
          if (r >= 0 && O != NULL) {
            //tl_scheme_object_sbdump (b, O);
            char *s = FUNC4 (O);
            if (s) {
              FUNC3 (scheme_filename, "%s", s);
            }
            FUNC14 (O);
          }
          FUNC2 (scheme_filename);
          scheme_filename = NULL;
        } else {
          if (qlen && Q[0] == RPC_REQ_ERROR) {
            int o = 4 * (qlen - 1);
            FUNC9 (P+5, Q+1, o);
            FUNC11 (o + 24);
            expect_input = 1;
            return 0;
          }
          int r = FUNC17 (&compiler, &unserialize_buff, Q, qlen, typename, params.indentation);
          if (r < 0) {
            FUNC7 ();
          } else {
            if (r != qlen) {
              FUNC5 ("Warning: unserialize %d ints of result, but result contains %d ints.\n", r, qlen);
            }
            FUNC15 (&unserialize_buff, 0);
            char *s = unserialize_buff.buff;
            while (*s) {
              if (*s == '\t') {
                int k;
                for (k = 0; k < params.tabsize; k++) {
                  FUNC6 (' ');
                }
              } else {
                FUNC6 (*s);
              }
              s++;
            }
            FUNC6 ('\n');
          }
        }
      }
      FUNC1 (&typename);
      expect_input = 1;
    }
    return 0;
  } if (op == RPC_REQ_ERROR) {
    long long received_req_id;
    FUNC0 (FUNC10 (&c->In, P, len) == len);
    FUNC9 (&received_req_id, &P[3], 8);
    if (received_req_id != req_id) {
      FUNC5 ("RPC_REQ_ERROR: req_id = %lld, expected req_id = %lld\n", received_req_id, req_id);
      return 0;
    } else {
      FUNC11 (len);
    }
    FUNC1 (&typename);
    expect_input = 1;
    return 0;
  } else {
    return SKIP_ALL_BYTES;
  }
}