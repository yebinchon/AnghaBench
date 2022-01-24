#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int port; void* address; } ;
struct TYPE_5__ {int port; void* address; } ;
struct TYPE_4__ {int listen; int keep; int ssl; } ;
struct options {int max_read; TYPE_3__ dst; TYPE_2__ src; TYPE_1__ extra; } ;
typedef  int /*<<< orphan*/  o ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static struct options FUNC7(int argc, char **argv)
{
	struct options o;
	int opt;

	FUNC4(&o, 0, sizeof(o));
	o.src.port = o.dst.port = 10024;
	o.max_read = -1;

	while ((opt = FUNC3(argc, argv, "p:s:R:" "lkSvh")) != -1) {
		switch (opt) {
			case 'p': o.src.port    = FUNC0(optarg); break;
			case 's': o.src.address = FUNC6("127.1"); break;
			case 'R': o.max_read    = FUNC0(optarg); break;

			case 'l': o.extra.listen = 1; break;
			case 'k': o.extra.keep   = 1; break;
			case 'S': o.extra.ssl    = 1; break;

			/**
			 * TODO: implement other bits:
			 * - filters
			 * - pair
			 * - watermarks
			 * - ratelimits
			 */

			case 'v': ++verbose; break;
			case 'h':
				FUNC5(stdout, argv[0]);
				FUNC1(EXIT_SUCCESS);
			default:
				FUNC2(stderr, "Unknown option -%c\n", opt); break;
				FUNC1(EXIT_FAILURE);
		}
	}

	if ((argc-optind) > 1) {
		o.dst.address = FUNC6(argv[optind]);
		++optind;
	}
	if ((argc-optind) > 1) {
		o.dst.port = FUNC0(optarg);
		++optind;
	}
	if ((argc-optind) > 1) {
		FUNC5(stderr, argv[0]);
		FUNC1(1);
	}

	if (!o.src.address)
		o.src.address = FUNC6("127.1");
	if (!o.dst.address)
		o.dst.address = FUNC6("127.1");

	return o;
}