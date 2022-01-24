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
typedef  int /*<<< orphan*/  sha1_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,size_t*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static char *FUNC8(const char *sec_key) {
  if (!sec_key) {
    return NULL;
  }

  // concat sec_key + magic
  static char *MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
  size_t text_length = (FUNC7(sec_key) + FUNC7(MAGIC) + 1);
  char *text = (char *)FUNC2(text_length * sizeof(char));
  if (!text) {
    return NULL;
  }
  FUNC6(text, "%s%s", sec_key, MAGIC);

  // SHA-1 hash
  unsigned char hash[20];
  sha1_context ctx;
  FUNC4(&ctx);
  FUNC5(&ctx, (const unsigned char *)text, text_length-1);
  FUNC3(&ctx, hash);
  FUNC1(text);
  text = NULL;

  // base64 encode
  size_t length = 0;
  FUNC0(NULL, &length, NULL, 20);
  char *ret = (char *)FUNC2(length);
  if (!ret) {
    return NULL;
  }
  if (FUNC0((unsigned char *)ret, &length, hash, 20)) {
    FUNC1(ret);
    return NULL;
  }

  return ret;
}