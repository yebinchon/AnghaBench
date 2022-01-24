#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t capa; } ;
struct TYPE_8__ {char* ptr; size_t len; TYPE_1__ aux; } ;
struct TYPE_9__ {char* ary; TYPE_2__ heap; } ;
struct RString {TYPE_3__ as; scalar_t__ flags; int /*<<< orphan*/  c; int /*<<< orphan*/  tt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_10__ {int /*<<< orphan*/  string_class; } ;
typedef  TYPE_4__ mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RString*) ; 
 scalar_t__ MRB_STR_NOFREE ; 
 int /*<<< orphan*/  MRB_TT_STRING ; 
 size_t RSTRING_EMBED_LEN_MAX ; 
 size_t FUNC1 (struct RString*) ; 
 scalar_t__ FUNC2 (struct RString*) ; 
 scalar_t__ FUNC3 (struct RString*) ; 
 int /*<<< orphan*/  FUNC4 (struct RString*) ; 
 int /*<<< orphan*/  FUNC5 (struct RString*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct RString*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct RString*) ; 
 struct RString* FUNC10 (int /*<<< orphan*/ ) ; 

mrb_value
FUNC11(mrb_state *mrb, mrb_value str)
{
  struct RString *s = FUNC10(str);
  struct RString *ns;
  char *ptr;
  mrb_int len;

  ns = (struct RString *)FUNC8(mrb, sizeof(struct RString));
  ns->tt = MRB_TT_STRING;
  ns->c = mrb->string_class;

  if (FUNC3(s)) {
    ns->flags = MRB_STR_NOFREE;
    ns->as.heap.ptr = s->as.heap.ptr;
    ns->as.heap.len = s->as.heap.len;
    ns->as.heap.aux.capa = 0;
  }
  else {
    ns->flags = 0;
    if (FUNC2(s)) {
      ptr = s->as.ary;
      len = FUNC1(s);
    }
    else {
      ptr = s->as.heap.ptr;
      len = s->as.heap.len;
    }

    if (len < RSTRING_EMBED_LEN_MAX) {
      FUNC4(ns);
      FUNC5(ns, len);
      if (ptr) {
        FUNC7(ns->as.ary, ptr, len);
      }
      ns->as.ary[len] = '\0';
    }
    else {
      ns->as.heap.ptr = (char *)FUNC8(mrb, (size_t)len+1);
      ns->as.heap.len = len;
      ns->as.heap.aux.capa = len;
      if (ptr) {
        FUNC7(ns->as.heap.ptr, ptr, len);
      }
      ns->as.heap.ptr[len] = '\0';
    }
  }
  FUNC6(ns);
  FUNC0(ns);
  return FUNC9(ns);
}