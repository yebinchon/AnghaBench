
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t countDigits (size_t) ;

__attribute__((used)) static size_t bulklen(size_t len) {
    return 1+countDigits(len)+2+len+2;
}
