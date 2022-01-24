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
typedef  int JSON_Value_Type ;
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;
typedef  int /*<<< orphan*/  JSON_Array ;

/* Variables and functions */
#define  JSONArray 135 
#define  JSONBoolean 134 
#define  JSONError 133 
#define  JSONFixed 132 
#define  JSONNull 131 
#define  JSONNumber 130 
#define  JSONObject 129 
#define  JSONString 128 
 double FUNC0 (scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 char* FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*) ; 

int FUNC14(const JSON_Value *a, const JSON_Value *b) {
    JSON_Object *a_object = NULL, *b_object = NULL;
    JSON_Array *a_array = NULL, *b_array = NULL;
    const char *a_string = NULL, *b_string = NULL;
    const char *key = NULL;
    size_t a_count = 0, b_count = 0, i = 0;
    JSON_Value_Type a_type, b_type;
    a_type = FUNC12(a);
    b_type = FUNC12(b);
    if (a_type != b_type) {
        return 0;
    }
    switch (a_type) {
        case JSONArray:
            a_array = FUNC6(a);
            b_array = FUNC6(b);
            a_count = FUNC1(a_array);
            b_count = FUNC1(b_array);
            if (a_count != b_count) {
                return 0;
            }
            for (i = 0; i < a_count; i++) {
                if (!FUNC14(FUNC2(a_array, i),
                                       FUNC2(b_array, i))) {
                    return 0;
                }
            }
            return 1;
        case JSONObject:
            a_object = FUNC10(a);
            b_object = FUNC10(b);
            a_count = FUNC3(a_object);
            b_count = FUNC3(b_object);
            if (a_count != b_count) {
                return 0;
            }
            for (i = 0; i < a_count; i++) {
                key = FUNC4(a_object, i);
                if (!FUNC14(FUNC5(a_object, key),
                                       FUNC5(b_object, key))) {
                    return 0;
                }
            }
            return 1;
        case JSONString:
            a_string = FUNC11(a);
            b_string = FUNC11(b);
            if (a_string == NULL || b_string == NULL) {
                return 0; /* shouldn't happen */
            }
            return FUNC13(a_string, b_string) == 0;
        case JSONBoolean:
            return FUNC7(a) == FUNC7(b);
        case JSONNumber:
            return FUNC0(FUNC9(a) - FUNC9(b)) < 0.000001; /* EPSILON */
#ifdef JSON_FIXED_NUMBER
        case JSONFixed:
            return json_value_get_fixed(a) == json_value_get_fixed(b);
#endif
        case JSONError:
            return 1;
        case JSONNull:
            return 1;
        default:
            return 1;
    }
}