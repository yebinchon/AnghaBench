
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPECT_CHAR_NO_CHECK (char) ;
 int PARSE_INT (int*,int) ;

__attribute__((used)) static const char *parse_http_version(const char *buf, const char *buf_end, int *minor_version, int *ret)
{

    if (buf_end - buf < 9) {
        *ret = -2;
        return ((void*)0);
    }
    EXPECT_CHAR_NO_CHECK('H');
    EXPECT_CHAR_NO_CHECK('T');
    EXPECT_CHAR_NO_CHECK('T');
    EXPECT_CHAR_NO_CHECK('P');
    EXPECT_CHAR_NO_CHECK('/');
    EXPECT_CHAR_NO_CHECK('1');
    EXPECT_CHAR_NO_CHECK('.');
    PARSE_INT(minor_version, 1);
    return buf;
}
