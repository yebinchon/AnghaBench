
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IJKFF_Pipenode ;
typedef int IJKFF_Pipeline ;
typedef int FFPlayer ;


 int * ffpipenode_create_video_decoder_from_ffplay (int *) ;

__attribute__((used)) static IJKFF_Pipenode *func_open_video_decoder(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    return ffpipenode_create_video_decoder_from_ffplay(ffp);
}
