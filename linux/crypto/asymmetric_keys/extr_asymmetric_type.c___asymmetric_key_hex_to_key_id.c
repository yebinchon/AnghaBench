
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_id {size_t len; int data; } ;


 int hex2bin (int ,char const*,size_t) ;

inline int __asymmetric_key_hex_to_key_id(const char *id,
       struct asymmetric_key_id *match_id,
       size_t hexlen)
{
 match_id->len = hexlen;
 return hex2bin(match_id->data, id, hexlen);
}
