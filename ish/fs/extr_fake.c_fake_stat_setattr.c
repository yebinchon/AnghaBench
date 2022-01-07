
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ish_stat {int mode; int gid; int uid; } ;
struct attr {int type; int mode; int gid; int uid; } ;


 int S_IFMT ;




__attribute__((used)) static void fake_stat_setattr(struct ish_stat *ishstat, struct attr attr) {
    switch (attr.type) {
        case 128:
            ishstat->uid = attr.uid;
            break;
        case 130:
            ishstat->gid = attr.gid;
            break;
        case 129:
            ishstat->mode = (ishstat->mode & S_IFMT) | (attr.mode & ~S_IFMT);
            break;
    }
}
