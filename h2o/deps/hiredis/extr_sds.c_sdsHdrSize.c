
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdshdr8 {int dummy; } ;
struct sdshdr64 {int dummy; } ;
struct sdshdr5 {int dummy; } ;
struct sdshdr32 {int dummy; } ;
struct sdshdr16 {int dummy; } ;







 char SDS_TYPE_MASK ;

__attribute__((used)) static inline int sdsHdrSize(char type) {
    switch(type&SDS_TYPE_MASK) {
        case 130:
            return sizeof(struct sdshdr5);
        case 128:
            return sizeof(struct sdshdr8);
        case 132:
            return sizeof(struct sdshdr16);
        case 131:
            return sizeof(struct sdshdr32);
        case 129:
            return sizeof(struct sdshdr64);
    }
    return 0;
}
