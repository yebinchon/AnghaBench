
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int editorSyntaxToColor(int hl) {
    switch(hl) {
    case 134:
    case 130: return 36;
    case 133: return 33;
    case 132: return 32;
    case 128: return 35;
    case 129: return 31;
    case 131: return 34;
    default: return 37;
    }
}
