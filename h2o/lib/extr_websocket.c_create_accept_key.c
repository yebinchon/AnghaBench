
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sha1buf ;
typedef int key_src ;


 int SHA1 (int *,int,int *) ;
 char const* WS_GUID ;
 int h2o_base64_encode (char*,int *,int,int ) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static void create_accept_key(char *dst, const char *client_key)
{
    uint8_t sha1buf[20], key_src[60];

    memcpy(key_src, client_key, 24);
    memcpy(key_src + 24, WS_GUID, 36);
    SHA1(key_src, sizeof(key_src), sha1buf);
    h2o_base64_encode(dst, sha1buf, sizeof(sha1buf), 0);
    dst[28] = '\0';
}
