
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {TYPE_3__* backend; } ;
typedef TYPE_1__ git_odb_stream ;
struct TYPE_6__ {int type; int size; int buffer; } ;
typedef TYPE_2__ fake_wstream ;
struct TYPE_7__ {int (* write ) (TYPE_3__*,int const*,int ,int ,int ) ;} ;


 int stub1 (TYPE_3__*,int const*,int ,int ,int ) ;

__attribute__((used)) static int fake_wstream__fwrite(git_odb_stream *_stream, const git_oid *oid)
{
 fake_wstream *stream = (fake_wstream *)_stream;
 return _stream->backend->write(_stream->backend, oid, stream->buffer, stream->size, stream->type);
}
