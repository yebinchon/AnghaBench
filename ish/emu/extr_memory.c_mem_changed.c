
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int changes; } ;



__attribute__((used)) static void mem_changed(struct mem *mem) {
    mem->changes++;
}
