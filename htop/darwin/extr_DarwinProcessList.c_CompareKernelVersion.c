
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern {short* version; } ;


 int GetKernelVersion (struct kern*) ;

int CompareKernelVersion(short int major, short int minor, short int component) {
    struct kern k;
    GetKernelVersion(&k);
    if ( k.version[0] != major) return k.version[0] - major;
    if ( k.version[1] != minor) return k.version[1] - minor;
    if ( k.version[2] != component) return k.version[2] - component;
    return 0;
}
