#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_8__ {scalar_t__ type; int id_; } ;
struct TYPE_7__ {scalar_t__ type; int id_; } ;
struct TYPE_9__ {int weight_m1; int exclusive; TYPE_2__ dependency; TYPE_1__ prioritized; } ;
typedef  TYPE_3__ h2o_http3_priority_frame_t ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 size_t H2O_HTTP3_FRAME_TYPE_PRIORITY ; 
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER ; 
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM ; 
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT ; 
 int H2O_HTTP3_PRIORITY_FRAME_CAPACITY ; 
 int FUNC0 (TYPE_3__*,size_t const*,size_t,char const**) ; 
 size_t* FUNC1 (size_t*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_mem_pool_t pool;
    h2o_http3_priority_frame_t frame;
    const char *err_desc;
    uint8_t encoded[H2O_HTTP3_PRIORITY_FRAME_CAPACITY];
    size_t encoded_len;
    int ret;

    FUNC3(&pool);

    /* encode */
    frame.prioritized.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM;
    frame.prioritized.id_ = 12345; /* should be ignored */
    frame.dependency.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT;
    frame.dependency.id_ = 67890; /* ignored */
    frame.weight_m1 = 123;
    encoded_len = FUNC1(encoded, &frame) - encoded;

    /* decode */
    FUNC5(encoded_len == 1 + 1 + 1 + 2 + 1);
    FUNC5(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    FUNC5(encoded[1] == encoded_len - 2);
    FUNC4(&frame, 0, sizeof(frame));
    ret = FUNC0(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    FUNC5(ret == 0);
    FUNC5(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM);
    FUNC5(frame.prioritized.id_ == 12345);
    FUNC5(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    FUNC5(frame.dependency.id_ == 0);
    FUNC5(!frame.exclusive);
    FUNC5(frame.weight_m1 == 123);

    /* encode one that specifies prioritized element id, with the exclusive bit */
    frame.prioritized.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER;
    frame.prioritized.id_ = 12345; /* should be ignored */
    frame.exclusive = 1;
    encoded_len = FUNC1(encoded, &frame) - encoded;

    /* decode */
    FUNC5(encoded_len == 1 + 1 + 1 + 2 + 1);
    FUNC5(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    FUNC5(encoded[1] == encoded_len - 2);
    FUNC4(&frame, 0, sizeof(frame));
    ret = FUNC0(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    FUNC5(ret == 0);
    FUNC5(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER);
    FUNC5(frame.prioritized.id_ == 12345);
    FUNC5(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    FUNC5(frame.dependency.id_ == 0);
    FUNC5(frame.exclusive);
    FUNC5(frame.weight_m1 == 123);

    /* encode one that specifies both the element ids */
    frame.dependency.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM;
    frame.dependency.id_ = 67890; /* should be ignored */
    frame.exclusive = 0;
    encoded_len = FUNC1(encoded, &frame) - encoded;

    /* decode */
    FUNC5(encoded_len == 1 + 1 + 1 + 2 + 4 + 1);
    FUNC5(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    FUNC5(encoded[1] == encoded_len - 2);
    FUNC4(&frame, 0, sizeof(frame));
    ret = FUNC0(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    FUNC5(ret == 0);
    FUNC5(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER);
    FUNC5(frame.prioritized.id_ == 12345);
    FUNC5(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM);
    FUNC5(frame.dependency.id_ == 67890);
    FUNC5(!frame.exclusive);
    FUNC5(frame.weight_m1 == 123);

    /* check decode errors */
    ret = FUNC0(&frame, (const uint8_t *)encoded + 2, 1, &err_desc);
    FUNC5(ret != 0);
    ret = FUNC0(&frame, (const uint8_t *)encoded + 2, encoded_len - 1, &err_desc);
    FUNC5(ret != 0);

    FUNC2(&pool);
}