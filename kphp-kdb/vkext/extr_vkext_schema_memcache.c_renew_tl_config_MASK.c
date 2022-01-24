#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tl_type {int extra; int constructors_num; int /*<<< orphan*/ * constructors; } ;
struct tl_combinator {int dummy; } ;
struct TYPE_4__ {int tn; int cn; int fn; struct tl_combinator** fns; struct tl_type** tps; } ;
struct TYPE_3__ {scalar_t__ rptr; scalar_t__ wptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TLS_COMBINATOR ; 
 int TLS_TYPE ; 
 long long config_crc64 ; 
 long long FUNC2 (scalar_t__,int,long long) ; 
 TYPE_2__* cur_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ FUNC6 (void**,int) ; 
 scalar_t__ FUNC7 (struct tl_combinator*,void**,int) ; 
 int FUNC8 (int) ; 
 TYPE_1__* inbuf ; 
 struct tl_combinator* FUNC9 (int) ; 
 struct tl_type* FUNC10 () ; 
 int schema_version ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int tl_config_date ; 
 scalar_t__ tl_config_name ; 
 int tl_config_version ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 int verbosity ; 
 void* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

int FUNC20 (void) {
  if (verbosity >= 2) {
    FUNC3 (stderr, "Starting config renew\n");
  }
  FUNC16 ();
  int x = FUNC17 ();
  if (verbosity >= 2) {
    FUNC3 (stderr, "Schema 0x%08x\n", x);
  }
  schema_version = FUNC8 (x);
  if (verbosity >= 2) {
    FUNC3 (stderr, "Schema version %d\n", schema_version);
  }
  if (schema_version <= 0 || FUNC15 ()) {
    return -1;
  }

  int new_tl_config_version = FUNC17 ();
  int new_tl_config_date = FUNC17 ();

  if (FUNC15 ()) {
    return -1;
  }

  long long new_crc64 = FUNC2 (inbuf->rptr, ((char *)inbuf->wptr) - (char *)inbuf->rptr,-1ll);
  if (new_tl_config_version < tl_config_version || (new_tl_config_version == tl_config_version && new_tl_config_date < tl_config_date) || config_crc64 == new_crc64) {
    return 0;
  }

  FUNC12 ();
//  int x;

//  struct tl_type *tps [10000];
  int tn = 0;
//  struct tl_combinator *fns [10000];
  int fn = 0;
  int cn;
  int i;

  tn = FUNC17 ();
  if (tn < 0 || tn > 10000 || FUNC15 ()) {
    FUNC13 ();
    return -1;
  }
  
  cur_config->tps = FUNC18 (sizeof (void *) * tn);
  cur_config->tn = tn;
  FUNC1 (tn * sizeof (void *));
  struct tl_type **tps = cur_config->tps;
  if (verbosity >= 2) {
    FUNC3 (stderr, "Found %d types\n", tn);
  }

  for (i = 0; i < tn; i++) {
    if (FUNC17 () != TLS_TYPE) { 
      FUNC13 ();
      return -1; 
    }
    tps[i] = FUNC10 ();
    if (!tps[i]) { 
      FUNC13 ();
      return -1; 
    }
  }

  cn = FUNC17 ();  
  if (cn < 0 || FUNC15 ()) {
    FUNC13 ();
    return -1;
  }
  cur_config->cn = cn;

  if (verbosity >= 2) {
    FUNC3 (stderr, "Found %d constructors\n", cn);
  }

  for (i = 0; i < cn; i++) {
    if (FUNC17 () != TLS_COMBINATOR) { 
      FUNC13 ();
      return -1; 
    }
    if (!FUNC9 (2)) {
      FUNC13 ();
      return -1;
    }
  }
  fn = FUNC17 ();
  if (fn < 0 || fn > 10000 || FUNC15 ()) {
    FUNC13 ();
    return -1;
  }
  cur_config->fn = fn;
  cur_config->fns = FUNC18 (sizeof (void *) * fn);
  FUNC1 (fn * sizeof (void *));
  struct tl_combinator **fns = cur_config->fns;
  
  if (verbosity >= 2) {
    FUNC3 (stderr, "Found %d functions\n", fn);
  }

  for (i = 0; i < fn; i++) {
    if (FUNC17 () != TLS_COMBINATOR) { 
      FUNC13 ();
      return -1; 
    }
    fns[i] = FUNC9 (3);
    if (!fns[i]) { 
      FUNC13 ();
      return -1; 
    }
  }
  FUNC14 ();
  if (FUNC15 ()) {
    FUNC13 ();
    return -1;
  }
  static void *IP[10000];
  if (FUNC6 (IP, 100) < 0) {
    return -2;
  }
  for (i = 0; i < tn; i++) {
    if (tps[i]->extra < tps[i]->constructors_num) {
      FUNC13 ();
      return -1;
    }
  }
  int j;
  for (i = 0; i < tn; i++) {
    for (j = 0; j < tps[i]->constructors_num; j ++) {
      if (FUNC5 (tps[i]->constructors[j], IP, 10000) < 0) {
        return -2;
      }
      if (FUNC4 (tps[i]->constructors[j], IP, 10000) < 0) {
        return -2;
      }
    }
  }  
  for (i = 0; i < fn; i++) {
    if (FUNC7 (fns[i], IP, 10000) < 0) {
      return -2;
    }
  }
  if (tl_config_name) {
    FUNC0 (FUNC11 (tl_config_name));
    FUNC19 (tl_config_name);
  }
  tl_config_name = 0;
  config_crc64 = new_crc64;
  tl_config_version = new_tl_config_version ;
  tl_config_date = new_tl_config_date;
  return 1;
}