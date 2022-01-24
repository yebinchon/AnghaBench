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
typedef  double intmax_t ;
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;
typedef  int /*<<< orphan*/  JSON_Array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FIXED_FORMAT ; 
 char* FLOAT_FORMAT ; 
#define  JSONArray 135 
#define  JSONBoolean 134 
#define  JSONError 133 
#define  JSONFixed 132 
#define  JSONNull 131 
#define  JSONNumber 130 
#define  JSONObject 129 
#define  JSONString 128 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 double FUNC10 (int /*<<< orphan*/  const*) ; 
 double FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 char* FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (char*,char*,double) ; 

__attribute__((used)) static int FUNC16(const JSON_Value *value, char *buf, int level, int is_pretty, char *num_buf)
{
    const char *key = NULL, *string = NULL;
    JSON_Value *temp_value = NULL;
    JSON_Array *array = NULL;
    JSON_Object *object = NULL;
    size_t i = 0, count = 0;
    double num = 0.0;
#ifdef JSON_FIXED_NUMBER
    intmax_t inum = 0;
#endif
    int written = -1, written_total = 0;

    switch (FUNC14(value)) {
        case JSONArray:
            array = FUNC8(value);
            count = FUNC2(array);
            FUNC1("[");
            if (count > 0 && is_pretty) {
                FUNC1("\n");
            }
            for (i = 0; i < count; i++) {
                if (is_pretty) {
                    FUNC0(level+1);
                }
                temp_value = FUNC3(array, i);
                written = FUNC16(temp_value, buf, level+1, is_pretty, num_buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    FUNC1(",");
                }
                if (is_pretty) {
                    FUNC1("\n");
                }
            }
            if (count > 0 && is_pretty) {
                FUNC0(level);
            }
            FUNC1("]");
            return written_total;
        case JSONObject:
            object = FUNC12(value);
            count  = FUNC4(object);
            FUNC1("{");
            if (count > 0 && is_pretty) {
                FUNC1("\n");
            }
            for (i = 0; i < count; i++) {
                key = FUNC5(object, i);
                if (key == NULL) {
                    return -1;
                }
                if (is_pretty) {
                    FUNC0(level+1);
                }
                written = FUNC7(key, buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                FUNC1(":");
                if (is_pretty) {
                    FUNC1(" ");
                }
                temp_value = FUNC6(object, key);
                written = FUNC16(temp_value, buf, level+1, is_pretty, num_buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != NULL) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    FUNC1(",");
                }
                if (is_pretty) {
                    FUNC1("\n");
                }
            }
            if (count > 0 && is_pretty) {
                FUNC0(level);
            }
            FUNC1("}");
            return written_total;
        case JSONString:
            string = FUNC13(value);
            if (string == NULL) {
                return -1;
            }
            written = FUNC7(string, buf);
            if (written < 0) {
                return -1;
            }
            if (buf != NULL) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case JSONBoolean:
            if (FUNC9(value)) {
                FUNC1("true");
            } else {
                FUNC1("false");
            }
            return written_total;
#ifdef JSON_FIXED_NUMBER
        case JSONFixed:
            inum = json_value_get_fixed(value);
            if (buf != NULL) {
                num_buf = buf;
            }
            written = sprintf(num_buf, FIXED_FORMAT, inum);
            if (written < 0) {
                return -1;
            }
            if (buf != NULL) {
                buf += written;
            }
            written_total += written;
            return written_total;
#endif
        case JSONNumber:
            num = FUNC11(value);
            if (buf != NULL) {
                num_buf = buf;
            }
            written = FUNC15(num_buf, FLOAT_FORMAT, num);
            if (written < 0) {
                return -1;
            }
            if (buf != NULL) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case JSONNull:
            FUNC1("null");
            return written_total;
        case JSONError:
            return -1;
        default:
            return -1;
    }
}