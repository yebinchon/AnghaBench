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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
#define  MRB_TT_ARRAY 136 
#define  MRB_TT_FALSE 135 
#define  MRB_TT_FIXNUM 134 
#define  MRB_TT_FLOAT 133 
#define  MRB_TT_HASH 132 
#define  MRB_TT_STRING 131 
#define  MRB_TT_SYMBOL 130 
#define  MRB_TT_TRUE 129 
#define  MRB_TT_UNDEF 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static mrb_value
FUNC17(mrb_state* mrb, mrb_value value, int pretty) {
  mrb_value str;

  if (FUNC10(value)) {
    return FUNC14(mrb, "null");
  }

  switch (FUNC15(value)) {
  case MRB_TT_FIXNUM:
  case MRB_TT_FLOAT:
  case MRB_TT_TRUE:
  case MRB_TT_FALSE:
  case MRB_TT_UNDEF:
    str = FUNC4(mrb, value, "to_s", 0, NULL);
    break;
  case MRB_TT_SYMBOL:
    value = FUNC4(mrb, value, "to_s", 0, NULL);
    /* FALLTHROUGH */
  case MRB_TT_STRING:
    {
      int ai = FUNC6(mrb);
      char* ptr = FUNC2(value);
      char* end = FUNC1(value);
      str = FUNC14(mrb, "\""); 
      while (ptr < end && *ptr) {
        switch (*ptr) {
        case '\\':
          str = FUNC12(mrb, str, "\\\\");
          break;
        case '"':
          str = FUNC12(mrb, str, "\\\"");
          break;
        case '\b':
          str = FUNC12(mrb, str, "\\b");
          break;
        case '\f':
          str = FUNC12(mrb, str, "\\f");
          break;
        case '\n':
          str = FUNC12(mrb, str, "\\n");
          break;
        case '\r':
          str = FUNC12(mrb, str, "\\r");
          break;
        case '\t':
          str = FUNC12(mrb, str, "\\t");
          break;
        default:
          // TODO: handle unicode
          str = FUNC11(mrb, str, ptr, 1);
        }
        ptr++;
      }
      FUNC12(mrb, str, "\""); 
      FUNC5(mrb, ai);
    }
    break;
  case MRB_TT_HASH:
    {
      mrb_value keys;
      int n, l;

      str = FUNC14(mrb, "{");
      keys = FUNC8(mrb, value);
      l = FUNC0(keys);
      if (l == 0) {
        if (pretty >= 0) return FUNC12(mrb, str, "\n}");
        return FUNC12(mrb, str, "}");
      }
      if (pretty >= 0) str = FUNC16(mrb, str, ++pretty);
      for (n = 0; n < l; n++) {
        mrb_value obj;
        int ai = FUNC6(mrb);
        mrb_value key = FUNC3(keys, n);
        mrb_value enckey = FUNC4(mrb, key, "to_s", 0, NULL);
        enckey = FUNC4(mrb, enckey, "inspect", 0, NULL);
        FUNC13(mrb, str, enckey);
        FUNC12(mrb, str, ":");
        obj = FUNC7(mrb, value, key);
        FUNC13(mrb, str, FUNC17(mrb, obj, pretty));
        if (n != l - 1) {
          FUNC12(mrb, str, ",");
          if (pretty >= 0) str = FUNC16(mrb, str, pretty);
        }
        FUNC5(mrb, ai);
      }
      if (pretty >= 0) str = FUNC16(mrb, str, --pretty);
      FUNC12(mrb, str, "}");
      break;
    }
  case MRB_TT_ARRAY:
    {
      int n, l;

      str = FUNC14(mrb, "[");
      l = FUNC0(value);
      if (l == 0) {
        if (pretty >= 0) return FUNC12(mrb, str, "\n]");
        return FUNC12(mrb, str, "]");
      }
      if (pretty >= 0) str = FUNC16(mrb, str, ++pretty);
      for (n = 0; n < l; n++) {
        int ai = FUNC6(mrb);
        mrb_value obj = FUNC3(value, n);
        FUNC13(mrb, str, FUNC17(mrb, obj, pretty));
        if (n != l - 1) {
          FUNC12(mrb, str, ",");
          if (pretty >= 0) str = FUNC16(mrb, str, pretty);
        }
        FUNC5(mrb, ai);
      }
      if (pretty >= 0) str = FUNC16(mrb, str, --pretty);
      FUNC12(mrb, str, "]");
      break;
    }
  default:
    {
      if (FUNC9(mrb, value, "to_json"))
        str = FUNC4(mrb, value, "to_json", 0, NULL);
      else
        str = FUNC17(mrb, FUNC4(mrb, value, "to_s", 0, NULL), pretty);
    }
  } 
  return str;
}