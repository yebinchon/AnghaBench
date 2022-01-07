
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int arg_store ;
 int assert_zu_le (size_t,size_t,char*) ;
 scalar_t__ strlen (char const*) ;
 size_t test_write_len ;

__attribute__((used)) static void test_write_cb(void *cbopaque, const char *s) {
 size_t prev_test_write_len = test_write_len;
 test_write_len += strlen(s);
 arg_store = *(uint64_t *)cbopaque;
 assert_zu_le(prev_test_write_len, test_write_len,
     "Test write overflowed");
}
