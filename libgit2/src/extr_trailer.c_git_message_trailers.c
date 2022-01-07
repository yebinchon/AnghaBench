
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* _trailer_block; int count; int trailers; } ;
typedef TYPE_1__ git_message_trailer_array ;
struct TYPE_9__ {char* key; char* value; } ;
typedef TYPE_2__ git_message_trailer ;
struct TYPE_10__ {int size; int ptr; } ;
typedef TYPE_3__ git_array_trailer_t ;
typedef enum trailer_state { ____Placeholder_trailer_state } trailer_state ;


 TYPE_3__ GIT_ARRAY_INIT ;
 int GOTO (int const) ;
 int NEXT (int const) ;
 int TRAILER_SEPARATORS ;
 char* extract_trailer_block (char const*,size_t*) ;
 TYPE_2__* git_array_alloc (TYPE_3__) ;
 int isalnum (char) ;
 int strchr (int ,char) ;

int git_message_trailers(git_message_trailer_array *trailer_arr, const char *message)
{
 enum trailer_state state = 131;
 int rc = 0;
 char *ptr;
 char *key = ((void*)0);
 char *value = ((void*)0);
 git_array_trailer_t arr = GIT_ARRAY_INIT;

 size_t trailer_len;
 char *trailer = extract_trailer_block(message, &trailer_len);
 if (trailer == ((void*)0))
  return -1;

 for (ptr = trailer;;) {
  switch (state) {
   case 131: {
    if (*ptr == 0) {
     goto ret;
    }

    key = ptr;
    GOTO(134);
   }
   case 134: {
    if (*ptr == 0) {
     goto ret;
    }

    if (isalnum(*ptr) || *ptr == '-') {

     NEXT(134);
    }

    if (*ptr == ' ' || *ptr == '\t') {

     *ptr = 0;
     NEXT(133);
    }

    if (strchr(TRAILER_SEPARATORS, *ptr)) {
     *ptr = 0;
     NEXT(132);
    }


    GOTO(135);
   }
   case 133: {
    if (*ptr == 0) {
     goto ret;
    }

    if (*ptr == ' ' || *ptr == '\t') {
     NEXT(133);
    }

    if (strchr(TRAILER_SEPARATORS, *ptr)) {
     NEXT(132);
    }


    GOTO(135);
   }
   case 132: {
    if (*ptr == 0) {
     goto ret;
    }

    if (*ptr == ' ' || *ptr == '\t') {
     NEXT(132);
    }

    value = ptr;
    NEXT(130);
   }
   case 130: {
    if (*ptr == 0) {
     GOTO(129);
    }

    if (*ptr == '\n') {
     NEXT(128);
    }

    NEXT(130);
   }
   case 128: {
    if (*ptr == ' ') {

     NEXT(130);
    }

    ptr[-1] = 0;
    GOTO(129);
   }
   case 129: {
    git_message_trailer *t = git_array_alloc(arr);

    t->key = key;
    t->value = value;

    key = ((void*)0);
    value = ((void*)0);

    GOTO(131);
   }
   case 135: {
    if (*ptr == 0) {
     goto ret;
    }

    if (*ptr == '\n') {
     NEXT(131);
    }

    NEXT(135);
   }
  }
 }

ret:
 trailer_arr->_trailer_block = trailer;
 trailer_arr->trailers = arr.ptr;
 trailer_arr->count = arr.size;

 return rc;
}
