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
struct proxy_stream {int /*<<< orphan*/  temp_buf; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  git_writestream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proxy_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct proxy_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(git_writestream *s)
{
	struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
	FUNC0(proxy_stream);

	FUNC2(&proxy_stream->input);
	FUNC2(&proxy_stream->temp_buf);
	FUNC1(proxy_stream);
}