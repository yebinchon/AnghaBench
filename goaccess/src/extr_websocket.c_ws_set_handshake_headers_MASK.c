#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  digest ;
struct TYPE_3__ {void* upgrade; int /*<<< orphan*/  connection; void* ws_resp; int /*<<< orphan*/  ws_accept; int /*<<< orphan*/  ws_key; } ;
typedef  TYPE_1__ WSHeaders ;

/* Variables and functions */
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  WS_MAGIC_STR ; 
 char* WS_SWITCH_PROTO_STR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC6 (size_t) ; 
 void* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (WSHeaders * headers)
{
  size_t klen = FUNC4 (headers->ws_key);
  size_t mlen = FUNC4 (WS_MAGIC_STR);
  size_t len = klen + mlen;
  char *s = FUNC6 (klen + mlen + 1);
  uint8_t digest[SHA_DIGEST_LENGTH];

  FUNC3 (digest, 0, sizeof *digest);

  FUNC2 (s, headers->ws_key, klen);
  FUNC2 (s + klen, WS_MAGIC_STR, mlen + 1);

  FUNC5 (s, len, digest);

  /* set response headers */
  headers->ws_accept =
    FUNC0 ((unsigned char *) digest, sizeof (digest));
  headers->ws_resp = FUNC7 (WS_SWITCH_PROTO_STR);

  if (!headers->upgrade)
    headers->upgrade = FUNC7 ("websocket");
  if (!headers->connection)
    headers->upgrade = FUNC7 ("Upgrade");

  FUNC1 (s);
}