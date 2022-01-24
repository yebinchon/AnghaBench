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
struct TYPE_2__ {int wrerror; void* output; int /*<<< orphan*/  getline; } ;
struct rerere_io_file {TYPE_1__ io; void* input; } ;
struct rerere_io {int dummy; } ;
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (void*) ; 
 void* FUNC4 (char const*,char*) ; 
 int FUNC5 (unsigned char*,struct rerere_io*,int) ; 
 int FUNC6 (struct index_state*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct rerere_io_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rerere_file_getline ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(struct index_state *istate,
		       const char *path, unsigned char *hash, const char *output)
{
	int has_conflicts = 0;
	struct rerere_io_file io;
	int marker_size = FUNC6(istate, path);

	FUNC7(&io, 0, sizeof(io));
	io.io.getline = rerere_file_getline;
	io.input = FUNC4(path, "r");
	io.io.wrerror = 0;
	if (!io.input)
		return FUNC2(FUNC0("could not open '%s'"), path);

	if (output) {
		io.io.output = FUNC4(output, "w");
		if (!io.io.output) {
			FUNC2(FUNC0("could not write '%s'"), output);
			FUNC3(io.input);
			return -1;
		}
	}

	has_conflicts = FUNC5(hash, (struct rerere_io *)&io, marker_size);

	FUNC3(io.input);
	if (io.io.wrerror)
		FUNC1(FUNC0("there were errors while writing '%s' (%s)"),
		      path, FUNC8(io.io.wrerror));
	if (io.io.output && FUNC3(io.io.output))
		io.io.wrerror = FUNC2(FUNC0("failed to flush '%s'"), path);

	if (has_conflicts < 0) {
		if (output)
			FUNC9(output);
		return FUNC1(FUNC0("could not parse conflict hunks in '%s'"), path);
	}
	if (io.io.wrerror)
		return -1;
	return has_conflicts;
}