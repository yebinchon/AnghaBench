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
typedef  scalar_t__ yrmcds_error ;
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t DEFAULT_COMPRESS ; 
 int /*<<< orphan*/  DEFAULT_PORT ; 
 char* DEFAULT_SERVER ; 
 scalar_t__ YRMCDS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int quiet ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *) ; 

int FUNC35(int argc, char** argv) {
    const char* server = DEFAULT_SERVER;
    uint16_t port = DEFAULT_PORT;
    size_t compression = DEFAULT_COMPRESS;
    int text_mode = 0;

    while( 1 ) {
        int n;
        int c = FUNC13(argc, argv, "s:p:c:dtqvh");
        if( c == -1 ) break;
        switch( c ) {
        case 's':
            server = optarg;
            break;
        case 'p':
            n = FUNC3(optarg);
            if( n <= 0 || n > 65535 ) {
                FUNC8(stderr, "Invalid TCP port.\n");
                return 1;
            }
            port = (uint16_t)n;
            break;
        case 'c':
            n = FUNC3(optarg);
            if( n <= 0 ) {
                FUNC8(stderr, "Invalid compression thoreshold.\n");
                return 1;
            }
            compression = (size_t)n;
            break;
        case 'd':
            debug = 1;
            break;
        case 't':
            text_mode = 1;
            break;
        case 'q':
            quiet = 1;
            break;
        case 'v':
            FUNC30();
            return 0;
        case 'h':
            FUNC29();
            return 0;
        default:
            return 1;
        }
    }

    if( optind == argc ) {
        FUNC29();
        return 0;
    }

    const char* cmd = argv[optind];
    argc -= optind + 1;
    argv += optind + 1;

    yrmcds s[1];
    yrmcds_error e = FUNC32(s, server, port);
    FUNC0(e);
    if( text_mode ) {
        e = FUNC34(s);
        FUNC0(e);
    }
    e = FUNC33(s, compression);
    if( e != 0 && e != YRMCDS_NOT_IMPLEMENTED ) {
        FUNC31(s);
        FUNC0(e);
    }

    int ret = 1;
#define do_cmd(name)                            \
    if( strcmp(cmd, #name) == 0 )  {            \
        ret = cmd_##name(argc, argv, s);        \
            goto OUT;                           \
    }

    do_cmd(noop);
    do_cmd(get);
    do_cmd(getk);
    do_cmd(gat);
    do_cmd(gatk);
    do_cmd(lag);
    do_cmd(lagk);
    do_cmd(touch);
    do_cmd(set);
    do_cmd(replace);
    do_cmd(add);
    do_cmd(rau);
    do_cmd(incr);
    do_cmd(decr);
    do_cmd(append);
    do_cmd(prepend);
    do_cmd(delete);
    do_cmd(lock);
    do_cmd(unlock);
    do_cmd(unlockall);
    do_cmd(flush);
    do_cmd(stat);
    do_cmd(keys);
    do_cmd(version);
    do_cmd(quit);

    FUNC8(stderr, "No such command: %s\n", cmd);

  OUT:
    FUNC31(s);
    return ret;
}