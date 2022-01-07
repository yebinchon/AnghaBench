
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yrmcds_error ;
typedef int yrmcds ;
typedef int uint16_t ;


 int CHECK_ERROR (scalar_t__) ;
 size_t DEFAULT_COMPRESS ;
 int DEFAULT_PORT ;
 char* DEFAULT_SERVER ;
 scalar_t__ YRMCDS_NOT_IMPLEMENTED ;
 int add () ;
 int append () ;
 int atoi (char*) ;
 int debug ;
 int decr () ;
 int delete () ;
 int do_cmd (int (*) ()) ;
 int flush () ;
 int fprintf (int ,char*,...) ;
 int gat () ;
 int gatk () ;
 int get () ;
 int getk () ;
 int getopt (int,char**,char*) ;
 int incr () ;
 int keys () ;
 int lag () ;
 int lagk () ;
 int lock () ;
 int noop () ;
 char* optarg ;
 int optind ;
 int prepend () ;
 int quiet ;
 int quit () ;
 int rau () ;
 int replace () ;
 int set () ;
 int stat () ;
 int stderr ;
 int touch () ;
 int unlock () ;
 int unlockall () ;
 int usage () ;
 int version () ;
 int yrmcds_close (int *) ;
 scalar_t__ yrmcds_connect (int *,char const*,int ) ;
 scalar_t__ yrmcds_set_compression (int *,size_t) ;
 scalar_t__ yrmcds_text_mode (int *) ;

int main(int argc, char** argv) {
    const char* server = DEFAULT_SERVER;
    uint16_t port = DEFAULT_PORT;
    size_t compression = DEFAULT_COMPRESS;
    int text_mode = 0;

    while( 1 ) {
        int n;
        int c = getopt(argc, argv, "s:p:c:dtqvh");
        if( c == -1 ) break;
        switch( c ) {
        case 's':
            server = optarg;
            break;
        case 'p':
            n = atoi(optarg);
            if( n <= 0 || n > 65535 ) {
                fprintf(stderr, "Invalid TCP port.\n");
                return 1;
            }
            port = (uint16_t)n;
            break;
        case 'c':
            n = atoi(optarg);
            if( n <= 0 ) {
                fprintf(stderr, "Invalid compression thoreshold.\n");
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
            version();
            return 0;
        case 'h':
            usage();
            return 0;
        default:
            return 1;
        }
    }

    if( optind == argc ) {
        usage();
        return 0;
    }

    const char* cmd = argv[optind];
    argc -= optind + 1;
    argv += optind + 1;

    yrmcds s[1];
    yrmcds_error e = yrmcds_connect(s, server, port);
    CHECK_ERROR(e);
    if( text_mode ) {
        e = yrmcds_text_mode(s);
        CHECK_ERROR(e);
    }
    e = yrmcds_set_compression(s, compression);
    if( e != 0 && e != YRMCDS_NOT_IMPLEMENTED ) {
        yrmcds_close(s);
        CHECK_ERROR(e);
    }

    int ret = 1;






    if( strcmp(cmd, "noop") == 0 ) { ret = cmd_noop(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "get") == 0 ) { ret = cmd_get(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "getk") == 0 ) { ret = cmd_getk(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "gat") == 0 ) { ret = cmd_gat(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "gatk") == 0 ) { ret = cmd_gatk(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "lag") == 0 ) { ret = cmd_lag(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "lagk") == 0 ) { ret = cmd_lagk(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "touch") == 0 ) { ret = cmd_touch(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "set") == 0 ) { ret = cmd_set(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "replace") == 0 ) { ret = cmd_replace(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "add") == 0 ) { ret = cmd_add(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "rau") == 0 ) { ret = cmd_rau(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "incr") == 0 ) { ret = cmd_incr(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "decr") == 0 ) { ret = cmd_decr(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "append") == 0 ) { ret = cmd_append(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "prepend") == 0 ) { ret = cmd_prepend(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "delete") == 0 ) { ret = cmd_delete(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "lock") == 0 ) { ret = cmd_lock(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "unlock") == 0 ) { ret = cmd_unlock(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "unlockall") == 0 ) { ret = cmd_unlockall(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "flush") == 0 ) { ret = cmd_flush(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "stat") == 0 ) { ret = cmd_stat(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "keys") == 0 ) { ret = cmd_keys(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "version") == 0 ) { ret = cmd_version(argc, argv, s); goto OUT; };
    if( strcmp(cmd, "quit") == 0 ) { ret = cmd_quit(argc, argv, s); goto OUT; };

    fprintf(stderr, "No such command: %s\n", cmd);

  OUT:
    yrmcds_close(s);
    return ret;
}
