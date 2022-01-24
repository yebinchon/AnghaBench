#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* capa; } ;
struct TYPE_5__ {char* ptr; TYPE_1__ aux; void* len; } ;
struct TYPE_6__ {char* ary; TYPE_2__ heap; } ;
struct RString {TYPE_3__ as; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 size_t MRB_INT_MAX ; 
 size_t RSTRING_EMBED_LEN_MAX ; 
 char* FUNC0 (struct RString*) ; 
 int /*<<< orphan*/  FUNC1 (struct RString*) ; 
 int /*<<< orphan*/  FUNC2 (struct RString*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 struct RString* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 struct RString* FUNC8 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static struct RString*
FUNC9(mrb_state *mrb, const char *p, size_t len)
{
  struct RString *s;

  if (p && FUNC7(p)) {
    return FUNC8(mrb, p, len);
  }
  s = FUNC5(mrb);
  if (len <= RSTRING_EMBED_LEN_MAX) {
    FUNC1(s);
    FUNC2(s, len);
    if (p) {
      FUNC3(s->as.ary, p, len);
    }
  }
  else {
    if (len >= MRB_INT_MAX) {
      FUNC6(mrb, E_ARGUMENT_ERROR, "string size too big");
    }
    s->as.heap.ptr = (char *)FUNC4(mrb, len+1);
    s->as.heap.len = (mrb_int)len;
    s->as.heap.aux.capa = (mrb_int)len;
    if (p) {
      FUNC3(s->as.heap.ptr, p, len);
    }
  }
  FUNC0(s)[len] = '\0';
  return s;
}