
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vidWidth; int buffWidth; int vidHeight; int buffHeight; } ;
typedef TYPE_1__ glconfig_t ;



__attribute__((used)) static void SwapVidAndBuff( glconfig_t* config ) {
 int swap = config->vidWidth;
 config->vidWidth = config->buffWidth;
 config->buffWidth = swap;
 swap = config->vidHeight;
 config->vidHeight = config->buffHeight;
 config->buffHeight = swap;
}
