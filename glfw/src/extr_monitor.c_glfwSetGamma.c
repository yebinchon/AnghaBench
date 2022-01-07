
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int size; unsigned short* red; unsigned short* green; unsigned short* blue; } ;
typedef int GLFWmonitor ;
typedef TYPE_1__ GLFWgammaramp ;


 float FLT_MAX ;
 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*,float) ;
 float _glfw_fminf (float,float) ;
 int assert (int) ;
 unsigned short* calloc (unsigned int,int) ;
 int free (unsigned short*) ;
 TYPE_1__* glfwGetGammaRamp (int *) ;
 int glfwSetGammaRamp (int *,TYPE_1__*) ;
 float powf (float,float) ;

void glfwSetGamma(GLFWmonitor* handle, float gamma)
{
    unsigned int i;
    unsigned short* values;
    GLFWgammaramp ramp;
    const GLFWgammaramp* original;
    assert(handle != ((void*)0));
    assert(gamma > 0.f);
    assert(gamma <= FLT_MAX);

    _GLFW_REQUIRE_INIT();

    if (gamma != gamma || gamma <= 0.f || gamma > FLT_MAX)
    {
        _glfwInputError(GLFW_INVALID_VALUE, "Invalid gamma value %f", gamma);
        return;
    }

    original = glfwGetGammaRamp(handle);
    if (!original)
        return;

    values = calloc(original->size, sizeof(unsigned short));

    for (i = 0; i < original->size; i++)
    {
        float value;


        value = i / (float) (original->size - 1);

        value = powf(value, 1.f / gamma) * 65535.f + 0.5f;

        value = _glfw_fminf(value, 65535.f);

        values[i] = (unsigned short) value;
    }

    ramp.red = values;
    ramp.green = values;
    ramp.blue = values;
    ramp.size = original->size;

    glfwSetGammaRamp(handle, &ramp);
    free(values);
}
