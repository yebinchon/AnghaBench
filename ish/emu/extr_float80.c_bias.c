
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIAS80 ;

__attribute__((used)) static unsigned bias(int exp) {
    return exp + BIAS80;
}
