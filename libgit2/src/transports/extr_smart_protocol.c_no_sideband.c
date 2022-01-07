
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ val; } ;
struct TYPE_9__ {TYPE_1__ cancelled; } ;
typedef TYPE_2__ transport_smart ;
struct git_odb_writepack {scalar_t__ (* append ) (struct git_odb_writepack*,int ,int ,int *) ;scalar_t__ (* commit ) (struct git_odb_writepack*,int *) ;} ;
struct TYPE_10__ {int offset; int data; } ;
typedef TYPE_3__ gitno_buffer ;
typedef int git_indexer_progress ;


 int GIT_ERROR_NET ;
 int GIT_EUSER ;
 int git_error_set (int ,char*) ;
 int gitno_consume_n (TYPE_3__*,int ) ;
 int gitno_recv (TYPE_3__*) ;
 scalar_t__ stub1 (struct git_odb_writepack*,int ,int ,int *) ;
 scalar_t__ stub2 (struct git_odb_writepack*,int *) ;

__attribute__((used)) static int no_sideband(transport_smart *t, struct git_odb_writepack *writepack, gitno_buffer *buf, git_indexer_progress *stats)
{
 int recvd;

 do {
  if (t->cancelled.val) {
   git_error_set(GIT_ERROR_NET, "The fetch was cancelled by the user");
   return GIT_EUSER;
  }

  if (writepack->append(writepack, buf->data, buf->offset, stats) < 0)
   return -1;

  gitno_consume_n(buf, buf->offset);

  if ((recvd = gitno_recv(buf)) < 0)
   return recvd;
 } while(recvd > 0);

 if (writepack->commit(writepack, stats) < 0)
  return -1;

 return 0;
}
