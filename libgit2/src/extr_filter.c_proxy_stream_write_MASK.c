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
struct proxy_stream {int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  git_writestream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proxy_stream*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(
	git_writestream *s, const char *buffer, size_t len)
{
	struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
	FUNC0(proxy_stream);

	return FUNC1(&proxy_stream->input, buffer, len);
}