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
struct write_data {int /*<<< orphan*/  buffered_comment; } ;
typedef  int /*<<< orphan*/  git_config_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(git_config_parser *reader, const char *line, size_t line_len, void *data)
{
	struct write_data *write_data;

	FUNC0(reader);

	write_data = (struct write_data *)data;
	return FUNC1(&write_data->buffered_comment, line, line_len);
}