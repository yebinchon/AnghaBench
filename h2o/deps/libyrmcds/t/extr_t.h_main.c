
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds ;


 int fprintf (int ,char*,...) ;
 int * get_yrmcds (int *) ;
 scalar_t__ n_failures ;
 int stderr ;
 int test_main (int *) ;
 int yrmcds_close (int *) ;

int main(int argc, char** argv) {
    yrmcds c_;
    yrmcds* c = get_yrmcds(&c_);
    if( c == ((void*)0) ) {
        fprintf(stderr, "No YRMCDS_HOST.  Skipped.\n");
        return 0;
    }

    test_main(c);
    yrmcds_close(c);

    if( n_failures > 0 ) {
        fprintf(stderr, "%d tests failed.\n", n_failures);
        return 1;
    }
    fprintf(stderr, "Passed.\n");
    return 0;
}
