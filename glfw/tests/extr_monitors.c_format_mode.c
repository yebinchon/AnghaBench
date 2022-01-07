
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int const width; int const height; int redBits; int greenBits; int blueBits; int refreshRate; } ;
typedef TYPE_1__ GLFWvidmode ;


 int euclid (int const,int const) ;
 int snprintf (char*,int,char*,int const,int const,int,int const,int const,int,int,int,int) ;

__attribute__((used)) static const char* format_mode(const GLFWvidmode* mode)
{
    static char buffer[512];
    const int gcd = euclid(mode->width, mode->height);

    snprintf(buffer,
             sizeof(buffer),
             "%i x %i x %i (%i:%i) (%i %i %i) %i Hz",
             mode->width, mode->height,
             mode->redBits + mode->greenBits + mode->blueBits,
             mode->width / gcd, mode->height / gcd,
             mode->redBits, mode->greenBits, mode->blueBits,
             mode->refreshRate);

    buffer[sizeof(buffer) - 1] = '\0';
    return buffer;
}
