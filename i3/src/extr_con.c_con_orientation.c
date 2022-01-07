
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int orientation_t ;
struct TYPE_3__ {int layout; } ;
typedef TYPE_1__ Con ;


 int ELOG (char*,...) ;
 int HORIZ ;







 int VERT ;
 int assert (int) ;

orientation_t con_orientation(Con *con) {
    switch (con->layout) {
        case 130:

        case 129:
            return VERT;

        case 131:

        case 128:
            return HORIZ;

        case 134:
            ELOG("Someone called con_orientation() on a con with L_DEFAULT, this is a bug in the code.\n");
            assert(0);

        case 133:
        case 132:
            ELOG("con_orientation() called on dockarea/output (%d) container %p\n", con->layout, con);
            assert(0);
    }

    assert(0);
}
