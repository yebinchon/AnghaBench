
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int digest ;
struct TYPE_3__ {void* upgrade; int connection; void* ws_resp; int ws_accept; int ws_key; } ;
typedef TYPE_1__ WSHeaders ;


 int SHA_DIGEST_LENGTH ;
 int WS_MAGIC_STR ;
 char* WS_SWITCH_PROTO_STR ;
 int base64_encode (unsigned char*,int) ;
 int free (char*) ;
 int memcpy (char*,int ,size_t) ;
 int memset (int *,int ,int) ;
 size_t strlen (int ) ;
 int ws_sha1_digest (char*,size_t,int *) ;
 char* xmalloc (size_t) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void
ws_set_handshake_headers (WSHeaders * headers)
{
  size_t klen = strlen (headers->ws_key);
  size_t mlen = strlen (WS_MAGIC_STR);
  size_t len = klen + mlen;
  char *s = xmalloc (klen + mlen + 1);
  uint8_t digest[SHA_DIGEST_LENGTH];

  memset (digest, 0, sizeof *digest);

  memcpy (s, headers->ws_key, klen);
  memcpy (s + klen, WS_MAGIC_STR, mlen + 1);

  ws_sha1_digest (s, len, digest);


  headers->ws_accept =
    base64_encode ((unsigned char *) digest, sizeof (digest));
  headers->ws_resp = xstrdup (WS_SWITCH_PROTO_STR);

  if (!headers->upgrade)
    headers->upgrade = xstrdup ("websocket");
  if (!headers->connection)
    headers->upgrade = xstrdup ("Upgrade");

  free (s);
}
