
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* message; } ;
typedef TYPE_1__ git_note ;


 int assert (TYPE_1__ const*) ;

const char * git_note_message(const git_note *note)
{
 assert(note);
 return note->message;
}
