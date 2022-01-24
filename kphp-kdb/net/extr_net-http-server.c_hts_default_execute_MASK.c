#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hts_data {int header_size; scalar_t__ data_size; int /*<<< orphan*/  query_flags; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  QF_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
#define  htqt_empty 131 
#define  htqt_get 130 
#define  htqt_head 129 
#define  htqt_post 128 
 int /*<<< orphan*/  netw_queries ; 
 int /*<<< orphan*/  netw_update_queries ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC4 (struct connection *c, int op) {
  struct hts_data *D = FUNC0(c);

  if (verbosity > 0) {
    FUNC3 (stderr, "http_server: op=%d, header_size=%d\n", op, D->header_size);
  }

  if (op != htqt_empty) {
    netw_queries++;
    if (op != htqt_get) {
      netw_update_queries++;
    }
  }

  switch (op) {

    case htqt_empty:
      break;

    case htqt_get:
    case htqt_post:
    case htqt_head:

    default:
      D->query_flags |= QF_ERROR;
      break;
  }

  FUNC2 (FUNC1 (&c->In, D->header_size) == D->header_size);
  return D->data_size >= 0 ? -413 : -501;

}