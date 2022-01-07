
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int (* MakeCurrent ) () ;} ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_10__ {scalar_t__ id; } ;
struct TYPE_13__ {TYPE_3__ custom_view; TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_14__ {scalar_t__ error; char* error_message; struct TYPE_14__* image_buffer; struct TYPE_14__* temp_buffer; struct TYPE_14__* recording_ctx; TYPE_4__ pbos; scalar_t__ is_video; scalar_t__ is_recording; int * dm_ctx; } ;
typedef TYPE_5__ GameContext ;
typedef int DeepmindContext ;


 scalar_t__ DMLAB_RECORDING_ERROR_NONE ;
 int DMLabUnloadIOQ3Module () ;
 int GLimp_Shutdown () ;
 int dmlab_release_context (int *) ;
 int dmlab_stop_recording (TYPE_5__*) ;
 int dmlab_stop_video (TYPE_5__*) ;
 int fprintf (int ,char*,char*) ;
 int free (TYPE_5__*) ;
 int qglDeleteBuffers (int,scalar_t__*) ;
 TYPE_6__ re ;
 int stderr ;
 int stub1 () ;

__attribute__((used)) static void dmlab_destroy_context(void* context) {
  GameContext* gc = context;
  DeepmindContext* ctx = gc->dm_ctx;

  if (gc->recording_ctx->is_recording) {
    dmlab_stop_recording(gc->recording_ctx);
  }
  if (gc->recording_ctx->is_video) {
    dmlab_stop_video(gc->recording_ctx);
  }
  if (gc->recording_ctx->error != DMLAB_RECORDING_ERROR_NONE) {
    fprintf(stderr, "ERROR: %s", gc->recording_ctx->error_message);
  }

  if (gc->pbos.rgb.id || gc->pbos.depth.id || gc->pbos.custom_view.id) {
    re.MakeCurrent();
    if (gc->pbos.rgb.id) {
      qglDeleteBuffers(1, &gc->pbos.rgb.id);
    }

    if (gc->pbos.depth.id) {
      qglDeleteBuffers(1, &gc->pbos.depth.id);
    }

    if (gc->pbos.custom_view.id) {
      qglDeleteBuffers(1, &gc->pbos.custom_view.id);
    }
  }

  dmlab_release_context(ctx);
  free(gc->recording_ctx);
  free(gc->temp_buffer);
  free(gc->image_buffer);
  free(gc);
  GLimp_Shutdown();
  DMLabUnloadIOQ3Module();
}
