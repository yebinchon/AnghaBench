
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand {scalar_t__ altstack; scalar_t__ altstack_size; } ;
typedef scalar_t__ dword_t ;



__attribute__((used)) static bool is_on_altstack(dword_t sp, struct sighand *sighand) {
    return sp > sighand->altstack && sp <= sighand->altstack + sighand->altstack_size;
}
