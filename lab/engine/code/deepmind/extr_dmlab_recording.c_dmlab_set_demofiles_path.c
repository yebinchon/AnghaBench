
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int demofiles_path; int error; } ;
typedef TYPE_1__ dmlabRecordingContext ;


 int DMLAB_RECORDING_ERROR_NONE ;
 int Q_strncpyz (int ,char const*,int) ;

void dmlab_set_demofiles_path(dmlabRecordingContext* context,
                              const char* path) {
  context->error = DMLAB_RECORDING_ERROR_NONE;

  Q_strncpyz(context->demofiles_path, path, sizeof(context->demofiles_path));
}
