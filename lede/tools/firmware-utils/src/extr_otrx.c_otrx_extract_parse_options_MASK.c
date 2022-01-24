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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/ * partition ; 
 int /*<<< orphan*/  trx_offset ; 

__attribute__((used)) static void FUNC2(int argc, char **argv) {
	int c;

	while ((c = FUNC1(argc, argv, "c:e:o:1:2:3:")) != -1) {
		switch (c) {
		case 'o':
			trx_offset = FUNC0(optarg);
			break;
		case '1':
			partition[0] = optarg;
			break;
		case '2':
			partition[1] = optarg;
			break;
		case '3':
			partition[2] = optarg;
			break;
		}
	}
}