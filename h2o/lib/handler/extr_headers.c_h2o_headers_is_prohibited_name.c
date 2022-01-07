
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_token_t ;


 int const* H2O_TOKEN_CONNECTION ;
 int const* H2O_TOKEN_CONTENT_LENGTH ;
 int const* H2O_TOKEN_DATE ;
 int const* H2O_TOKEN_SERVER ;
 int const* H2O_TOKEN_TRANSFER_ENCODING ;

int h2o_headers_is_prohibited_name(const h2o_token_t *token)
{

    if (token == H2O_TOKEN_CONNECTION || token == H2O_TOKEN_CONTENT_LENGTH || token == H2O_TOKEN_TRANSFER_ENCODING)
        return 1;

    if (token == H2O_TOKEN_DATE || token == H2O_TOKEN_SERVER)
        return 1;

    return 0;
}
