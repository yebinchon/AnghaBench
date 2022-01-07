
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_8__ {scalar_t__ type; int id_; } ;
struct TYPE_7__ {scalar_t__ type; int id_; } ;
struct TYPE_9__ {int weight_m1; int exclusive; TYPE_2__ dependency; TYPE_1__ prioritized; } ;
typedef TYPE_3__ h2o_http3_priority_frame_t ;
typedef int frame ;


 size_t H2O_HTTP3_FRAME_TYPE_PRIORITY ;
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER ;
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM ;
 scalar_t__ H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT ;
 int H2O_HTTP3_PRIORITY_FRAME_CAPACITY ;
 int h2o_http3_decode_priority_frame (TYPE_3__*,size_t const*,size_t,char const**) ;
 size_t* h2o_http3_encode_priority_frame (size_t*,TYPE_3__*) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void test_priority(void)
{
    h2o_mem_pool_t pool;
    h2o_http3_priority_frame_t frame;
    const char *err_desc;
    uint8_t encoded[H2O_HTTP3_PRIORITY_FRAME_CAPACITY];
    size_t encoded_len;
    int ret;

    h2o_mem_init_pool(&pool);


    frame.prioritized.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM;
    frame.prioritized.id_ = 12345;
    frame.dependency.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT;
    frame.dependency.id_ = 67890;
    frame.weight_m1 = 123;
    encoded_len = h2o_http3_encode_priority_frame(encoded, &frame) - encoded;


    ok(encoded_len == 1 + 1 + 1 + 2 + 1);
    ok(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    ok(encoded[1] == encoded_len - 2);
    memset(&frame, 0, sizeof(frame));
    ret = h2o_http3_decode_priority_frame(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    ok(ret == 0);
    ok(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM);
    ok(frame.prioritized.id_ == 12345);
    ok(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    ok(frame.dependency.id_ == 0);
    ok(!frame.exclusive);
    ok(frame.weight_m1 == 123);


    frame.prioritized.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER;
    frame.prioritized.id_ = 12345;
    frame.exclusive = 1;
    encoded_len = h2o_http3_encode_priority_frame(encoded, &frame) - encoded;


    ok(encoded_len == 1 + 1 + 1 + 2 + 1);
    ok(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    ok(encoded[1] == encoded_len - 2);
    memset(&frame, 0, sizeof(frame));
    ret = h2o_http3_decode_priority_frame(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    ok(ret == 0);
    ok(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER);
    ok(frame.prioritized.id_ == 12345);
    ok(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT);
    ok(frame.dependency.id_ == 0);
    ok(frame.exclusive);
    ok(frame.weight_m1 == 123);


    frame.dependency.type = H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM;
    frame.dependency.id_ = 67890;
    frame.exclusive = 0;
    encoded_len = h2o_http3_encode_priority_frame(encoded, &frame) - encoded;


    ok(encoded_len == 1 + 1 + 1 + 2 + 4 + 1);
    ok(encoded[0] == H2O_HTTP3_FRAME_TYPE_PRIORITY);
    ok(encoded[1] == encoded_len - 2);
    memset(&frame, 0, sizeof(frame));
    ret = h2o_http3_decode_priority_frame(&frame, (const uint8_t *)encoded + 2, encoded_len - 2, &err_desc);
    ok(ret == 0);
    ok(frame.prioritized.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER);
    ok(frame.prioritized.id_ == 12345);
    ok(frame.dependency.type == H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM);
    ok(frame.dependency.id_ == 67890);
    ok(!frame.exclusive);
    ok(frame.weight_m1 == 123);


    ret = h2o_http3_decode_priority_frame(&frame, (const uint8_t *)encoded + 2, 1, &err_desc);
    ok(ret != 0);
    ret = h2o_http3_decode_priority_frame(&frame, (const uint8_t *)encoded + 2, encoded_len - 1, &err_desc);
    ok(ret != 0);

    h2o_mem_clear_pool(&pool);
}
