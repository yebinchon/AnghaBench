#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  git_stream ;
struct TYPE_2__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ git_socket_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(git_stream *stream, void *data, size_t len)
{
	ssize_t ret;
	git_socket_stream *st = (git_socket_stream *) stream;

	if ((ret = FUNC1(st->s, data, len, 0)) < 0)
		FUNC0("error receiving socket data");

	return ret;
}