
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* tag_name; struct TYPE_3__* message; int tagger; } ;
typedef TYPE_1__ git_tag ;


 int git__free (TYPE_1__*) ;
 int git_signature_free (int ) ;

void git_tag__free(void *_tag)
{
 git_tag *tag = _tag;
 git_signature_free(tag->tagger);
 git__free(tag->message);
 git__free(tag->tag_name);
 git__free(tag);
}
