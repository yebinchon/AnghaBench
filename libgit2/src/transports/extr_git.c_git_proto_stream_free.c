
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * current_stream; } ;
typedef TYPE_1__ git_subtransport ;
typedef int git_smart_subtransport_stream ;
struct TYPE_7__ {struct TYPE_7__* url; int io; } ;
typedef TYPE_2__ git_proto_stream ;


 TYPE_1__* OWNING_SUBTRANSPORT (TYPE_2__*) ;
 int git__free (TYPE_2__*) ;
 int git_stream_close (int ) ;
 int git_stream_free (int ) ;

__attribute__((used)) static void git_proto_stream_free(git_smart_subtransport_stream *stream)
{
 git_proto_stream *s;
 git_subtransport *t;

 if (!stream)
  return;

 s = (git_proto_stream *)stream;
 t = OWNING_SUBTRANSPORT(s);

 t->current_stream = ((void*)0);

 git_stream_close(s->io);
 git_stream_free(s->io);
 git__free(s->url);
 git__free(s);
}
