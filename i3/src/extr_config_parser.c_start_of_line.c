
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *start_of_line(const char *walk, const char *beginning) {
    while (walk >= beginning && *walk != '\n' && *walk != '\r') {
        walk--;
    }

    return walk + 1;
}
