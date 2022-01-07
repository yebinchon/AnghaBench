
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long kb_align ;

__attribute__((used)) static inline unsigned long round_to_kb(long sect) {
        return ((sect - 1) / kb_align + 1) * kb_align;
}
