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
typedef  int /*<<< orphan*/  JSON_Status ;
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
 int /*<<< orphan*/  JSONSuccess ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

JSON_Status FUNC8(const JSON_Value *schema, const JSON_Value *value) {
    JSON_Value *temp_schema_value = NULL, *temp_value = NULL;
    JSON_Array *schema_array = NULL, *value_array = NULL;
    JSON_Object *schema_object = NULL, *value_object = NULL;
    JSON_Value_Type schema_type = JSONError, value_type = JSONError;
    const char *key = NULL;
    size_t i = 0, count = 0;
    if (schema == NULL || value == NULL) {
        return JSONFailure;
    }
    schema_type = FUNC7(schema);
    value_type = FUNC7(value);
    if (schema_type != value_type && schema_type != JSONNull) { /* null represents all values */
        return JSONFailure;
    }
    switch (schema_type) {
        case JSONArray:
            schema_array = FUNC5(schema);
            value_array = FUNC5(value);
            count = FUNC0(schema_array);
            if (count == 0) {
                return JSONSuccess; /* Empty array allows all types */
            }
            /* Get first value from array, rest is ignored */
            temp_schema_value = FUNC1(schema_array, 0);
            for (i = 0; i < FUNC0(value_array); i++) {
                temp_value = FUNC1(value_array, i);
                if (FUNC8(temp_schema_value, temp_value) == JSONFailure) {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case JSONObject:
            schema_object = FUNC6(schema);
            value_object = FUNC6(value);
            count = FUNC2(schema_object);
            if (count == 0) {
                return JSONSuccess; /* Empty object allows all objects */
            } else if (FUNC2(value_object) < count) {
                return JSONFailure; /* Tested object mustn't have less name-value pairs than schema */
            }
            for (i = 0; i < count; i++) {
                key = FUNC3(schema_object, i);
                temp_schema_value = FUNC4(schema_object, key);
                temp_value = FUNC4(value_object, key);
                if (temp_value == NULL) {
                    return JSONFailure;
                }
                if (FUNC8(temp_schema_value, temp_value) == JSONFailure) {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case JSONString: case JSONNumber: case JSONBoolean: case JSONNull:
            return JSONSuccess; /* equality already tested before switch */
#ifdef JSON_FIXED_NUMBER
        case JSONFixed:
            return JSONSuccess;
#endif
        case JSONError: default:
            return JSONFailure;
    }
}