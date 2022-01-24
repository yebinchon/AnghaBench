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
struct options {int unlink; int iocp; char* docroot; int /*<<< orphan*/  verbose; int /*<<< orphan*/  unixsock; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  o ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static struct options
FUNC5(int argc, char **argv)
{
	struct options o;
	int opt;

	FUNC3(&o, 0, sizeof(o));

	while ((opt = FUNC2(argc, argv, "hp:U:uIv")) != -1) {
		switch (opt) {
			case 'p': o.port = FUNC0(optarg); break;
			case 'U': o.unixsock = optarg; break;
			case 'u': o.unlink = 1; break;
			case 'I': o.iocp = 1; break;
			case 'v': ++o.verbose; break;
			case 'h': FUNC4(stdout, argv[0], 0); break;
			default : FUNC1(stderr, "Unknown option %c\n", opt); break;
		}
	}

	if (optind >= argc || (argc - optind) > 1) {
		FUNC4(stdout, argv[0], 1);
	}
	o.docroot = argv[optind];

	return o;
}