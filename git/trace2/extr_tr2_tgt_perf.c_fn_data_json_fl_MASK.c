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
typedef  int /*<<< orphan*/  uint64_t ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct json_writer {TYPE_1__ json; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char const*,struct repository const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(const char *file, int line,
			    uint64_t us_elapsed_absolute,
			    uint64_t us_elapsed_region, const char *category,
			    const struct repository *repo, const char *key,
			    const struct json_writer *value)
{
	const char *event_name = "data_json";
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC1(&buf_payload, "%s:%s", key, value->json.buf);

	FUNC0(file, line, event_name, repo, &us_elapsed_absolute,
			 &us_elapsed_region, category, &buf_payload);
	FUNC2(&buf_payload);
}