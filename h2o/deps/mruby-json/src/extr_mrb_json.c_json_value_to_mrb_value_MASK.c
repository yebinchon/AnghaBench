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
typedef  void* mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  double mrb_int ;
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;
typedef  int /*<<< orphan*/  JSON_Array ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
#define  JSONArray 135 
#define  JSONBoolean 134 
#define  JSONError 133 
#define  JSONFixed 132 
#define  JSONNull 131 
#define  JSONNumber 130 
#define  JSONObject 129 
#define  JSONString 128 
 double FUNC0 (double) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 double FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 char const* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*,void*) ; 
 void* FUNC15 () ; 
 void* FUNC16 (double) ; 
 void* FUNC17 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 void* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,void*,void*,void*) ; 
 void* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC24 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC25 () ; 

__attribute__((used)) static mrb_value
FUNC26(mrb_state* mrb, JSON_Value* value) {
  mrb_value ret;
  switch (FUNC12(value)) {
  case JSONError:
  case JSONNull:
    ret = FUNC22();
    break;
  case JSONString:
    ret = FUNC24(mrb, FUNC11(value));
    break;
#ifdef JSON_FIXED_NUMBER
  case JSONFixed:
    ret = mrb_fixnum_value((mrb_int)json_value_get_fixed(value));
    break;
  case JSONNumber:
    ret = mrb_float_value(mrb, json_value_get_number(value));
    break;
#else
  case JSONNumber:
    {
      double d = FUNC9(value);
      if (FUNC0(d) == d) {
        ret = FUNC16(d);
      }
      else {
        ret = FUNC17(mrb, d);
      }
    }
    break;
#endif
  case JSONObject:
    {
      mrb_value hash = FUNC20(mrb);
      JSON_Object* object = FUNC10(value);
      size_t count = FUNC3(object);
      size_t n;
      for (n = 0; n < count; n++) {
        int ai = FUNC19(mrb);
        const char* name = FUNC4(object, n);
        FUNC21(mrb, hash, FUNC24(mrb, name),
          FUNC26(mrb, FUNC5(object, name)));
        FUNC18(mrb, ai);
      }
      ret = hash;
    }
    break;
  case JSONArray:
    {
      mrb_value ary;
      JSON_Array* array;
      size_t n, count;
      ary = FUNC13(mrb);
      array = FUNC6(value);
      count = FUNC1(array);
      for (n = 0; n < count; n++) {
        int ai = FUNC19(mrb);
        JSON_Value* elem = FUNC2(array, n);
        FUNC14(mrb, ary, FUNC26(mrb, elem));
        FUNC18(mrb, ai);
      }
      ret = ary;
    }
    break;
  case JSONBoolean:
    if (FUNC7(value))
      ret = FUNC25();
    else
      ret = FUNC15();
    break;
  default:
    FUNC23(mrb, E_ARGUMENT_ERROR, "invalid argument");
  }
  return ret;
}