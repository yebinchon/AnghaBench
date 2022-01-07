
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mdvTag_t ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ mdvTagName_t ;
struct TYPE_5__ {int numFrames; int numTags; TYPE_1__* tagNames; int * tags; } ;
typedef TYPE_2__ mdvModel_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static mdvTag_t *R_GetTag( mdvModel_t *mod, int frame, const char *_tagName ) {
 int i;
 mdvTag_t *tag;
 mdvTagName_t *tagName;

 if ( frame >= mod->numFrames ) {

  frame = mod->numFrames - 1;
 }

 tag = mod->tags + frame * mod->numTags;
 tagName = mod->tagNames;
 for(i = 0; i < mod->numTags; i++, tag++, tagName++)
 {
  if(!strcmp(tagName->name, _tagName))
  {
   return tag;
  }
 }

 return ((void*)0);
}
