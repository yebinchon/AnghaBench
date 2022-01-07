
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mark_mode_t ;
typedef int Con ;


 int DLOG (char*,char const*,int *) ;
 int assert (int ) ;
 scalar_t__ con_has_mark (int *,char const*) ;
 int con_mark (int *,char const*,int ) ;
 int con_unmark (int *,char const*) ;

void con_mark_toggle(Con *con, const char *mark, mark_mode_t mode) {
    assert(con != ((void*)0));
    DLOG("Toggling mark \"%s\" on con = %p.\n", mark, con);

    if (con_has_mark(con, mark)) {
        con_unmark(con, mark);
    } else {
        con_mark(con, mark, mode);
    }
}
