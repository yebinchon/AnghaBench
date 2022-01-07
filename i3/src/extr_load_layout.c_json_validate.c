
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yajl_handle ;


 int ELOG (char*,unsigned char*) ;
 int LC_NUMERIC ;
 int setlocale (int ,char*) ;
 int yajl_alloc (int *,int *,int *) ;
 int yajl_allow_comments ;
 int yajl_allow_multiple_values ;
 int yajl_complete_parse (int ) ;
 int yajl_config (int ,int ,int) ;
 int yajl_free (int ) ;
 int yajl_free_error (int ,unsigned char*) ;
 unsigned char* yajl_get_error (int ,int,unsigned char const*,size_t const) ;
 scalar_t__ yajl_parse (int ,unsigned char const*,size_t const) ;
 scalar_t__ yajl_status_ok ;

bool json_validate(const char *buf, const size_t len) {
    bool valid = 1;
    yajl_handle hand = yajl_alloc(((void*)0), ((void*)0), ((void*)0));

    yajl_config(hand, yajl_allow_comments, 1);

    yajl_config(hand, yajl_allow_multiple_values, 1);

    setlocale(LC_NUMERIC, "C");
    if (yajl_parse(hand, (const unsigned char *)buf, len) != yajl_status_ok) {
        unsigned char *str = yajl_get_error(hand, 1, (const unsigned char *)buf, len);
        ELOG("JSON parsing error: %s\n", str);
        yajl_free_error(hand, str);
        valid = 0;
    }
    setlocale(LC_NUMERIC, "");

    yajl_complete_parse(hand);
    yajl_free(hand);

    return valid;
}
