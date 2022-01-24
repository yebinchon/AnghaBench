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
typedef  int /*<<< orphan*/  u_int32_t ;
struct bpf_program {int dummy; } ;
typedef  int /*<<< orphan*/  pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_PPP_PPPD ; 
 int /*<<< orphan*/  PPP_HDRLEN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_program*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct bpf_program*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7 (int argc, char ** argv)
{
    pcap_t  *pc; /* Fake struct pcap so we can compile expr */
    struct  bpf_program filter; /* Filter program for link-active pkts */
    u_int32_t netmask=0;

    int dflag = 3;
    if (argc == 4)
    {
	if (!FUNC6 (argv[1], "-d"))
	{
	    dflag = FUNC0 (argv[2]);
	    argv += 2;
	    argc -=2;
	}
    }
    if (argc != 2)
    {
	FUNC5 ("usage; %s [ -d <debug_level> ] expression\n", argv[0]);
	return 1;
    }

    pc = FUNC4(DLT_PPP_PPPD, PPP_HDRLEN);
    if (FUNC2(pc, &filter, argv[1], 1, netmask) == 0)
    {
	FUNC5 ("#\n# Expression: %s\n#\n", argv[1]);
	FUNC1 (&filter, dflag);
	return 0;
    }
    else
    {
	FUNC5("error in active-filter expression: %s\n", FUNC3(pc));
    }
    return 1;
}