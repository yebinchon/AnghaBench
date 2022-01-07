
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,...) ;
 char* WELCOME_MESSAGE (char const*) ;
 scalar_t__ g_defaultAlgo ;

__attribute__((used)) static int usage(const char* exename)
{
    DISPLAY( WELCOME_MESSAGE(exename) );
    DISPLAY( "Usage :\n");
    DISPLAY( "      %s [arg] [filenames]\n", exename);
    DISPLAY( "When no filename provided, or - provided : use stdin as input\n");
    DISPLAY( "Arguments :\n");
    DISPLAY( " -H# : hash selection : 0=32bits, 1=64bits (default: %i)\n", (int)g_defaultAlgo);
    DISPLAY( " -c  : read xxHash sums from the [filenames] and check them\n");
    DISPLAY( " -h  : help \n");
    return 0;
}
