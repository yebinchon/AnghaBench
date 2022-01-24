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
typedef  int /*<<< orphan*/  const JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;
typedef  int /*<<< orphan*/  JSON_Array ;

/* Variables and functions */
#define  JSONArray 135 
#define  JSONBoolean 134 
#define  JSONError 133 
 int /*<<< orphan*/  JSONFailure ; 
#define  JSONFixed 132 
#define  JSONNull 131 
#define  JSONNumber 130 
#define  JSONObject 129 
#define  JSONString 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 char* FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC15 () ; 
 int /*<<< orphan*/  const* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC18 () ; 
 int /*<<< orphan*/  const* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC20 () ; 
 int /*<<< orphan*/  const* FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (char const*) ; 

JSON_Value * FUNC24(const JSON_Value *value) {
    size_t i = 0;
    JSON_Value *return_value = NULL, *temp_value_copy = NULL, *temp_value = NULL;
    const char *temp_string = NULL, *temp_key = NULL;
    char *temp_string_copy = NULL;
    JSON_Array *temp_array = NULL, *temp_array_copy = NULL;
    JSON_Object *temp_object = NULL, *temp_object_copy = NULL;

    switch (FUNC14(value)) {
        case JSONArray:
            temp_array = FUNC8(value);
            return_value = FUNC15();
            if (return_value == NULL) {
                return NULL;
            }
            temp_array_copy = FUNC8(return_value);
            for (i = 0; i < FUNC1(temp_array); i++) {
                temp_value = FUNC2(temp_array, i);
                temp_value_copy = FUNC24(temp_value);
                if (temp_value_copy == NULL) {
                    FUNC7(return_value);
                    return NULL;
                }
                if (FUNC0(temp_array_copy, temp_value_copy) == JSONFailure) {
                    FUNC7(return_value);
                    FUNC7(temp_value_copy);
                    return NULL;
                }
            }
            return return_value;
        case JSONObject:
            temp_object = FUNC12(value);
            return_value = FUNC20();
            if (return_value == NULL) {
                return NULL;
            }
            temp_object_copy = FUNC12(return_value);
            for (i = 0; i < FUNC4(temp_object); i++) {
                temp_key = FUNC5(temp_object, i);
                temp_value = FUNC6(temp_object, temp_key);
                temp_value_copy = FUNC24(temp_value);
                if (temp_value_copy == NULL) {
                    FUNC7(return_value);
                    return NULL;
                }
                if (FUNC3(temp_object_copy, temp_key, temp_value_copy) == JSONFailure) {
                    FUNC7(return_value);
                    FUNC7(temp_value_copy);
                    return NULL;
                }
            }
            return return_value;
        case JSONBoolean:
            return FUNC16(FUNC9(value));
        case JSONNumber:
            return FUNC19(FUNC11(value));
#ifdef JSON_FIXED_NUMBER
        case JSONFixed:
            return json_value_init_fixed(json_value_get_fixed(value));
#endif
        case JSONString:
            temp_string = FUNC13(value);
            if (temp_string == NULL) {
                return NULL;
            }
            temp_string_copy = FUNC23(temp_string);
            if (temp_string_copy == NULL) {
                return NULL;
            }
            return_value = FUNC21(temp_string_copy);
            if (return_value == NULL) {
                FUNC22(temp_string_copy);
            }
            return return_value;
        case JSONNull:
            return FUNC18();
        case JSONError:
            return NULL;
        default:
            return NULL;
    }
}