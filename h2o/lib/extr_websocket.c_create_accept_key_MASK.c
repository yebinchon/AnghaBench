#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sha1buf ;
typedef  int /*<<< orphan*/  key_src ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char const* WS_GUID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC3(char *dst, const char *client_key)
{
    uint8_t sha1buf[20], key_src[60];

    FUNC2(key_src, client_key, 24);
    FUNC2(key_src + 24, WS_GUID, 36);
    FUNC0(key_src, sizeof(key_src), sha1buf);
    FUNC1(dst, sha1buf, sizeof(sha1buf), 0);
    dst[28] = '\0';
}