
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xkb_keysym_t ;
typedef int uint32_t ;
typedef int _GLFWwindow ;
struct TYPE_4__ {int modifiers; int keymap; int state; } ;
struct TYPE_5__ {TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;
typedef int GLFWbool ;


 int const GLFW_MOD_ALT ;
 int const GLFW_MOD_CONTROL ;
 TYPE_3__ _glfw ;
 int _glfwInputChar (int *,long,int const,int const) ;
 long _glfwKeySym2Unicode (int ) ;
 int composeSymbol (int const) ;
 int xkb_keymap_key_repeats (int ,int const) ;
 int xkb_state_key_get_syms (int ,int,int const**) ;

__attribute__((used)) static GLFWbool inputChar(_GLFWwindow* window, uint32_t key)
{
    uint32_t code, numSyms;
    long cp;
    const xkb_keysym_t *syms;
    xkb_keysym_t sym;

    code = key + 8;
    numSyms = xkb_state_key_get_syms(_glfw.wl.xkb.state, code, &syms);

    if (numSyms == 1)
    {



        sym = syms[0];

        cp = _glfwKeySym2Unicode(sym);
        if (cp != -1)
        {
            const int mods = _glfw.wl.xkb.modifiers;
            const int plain = !(mods & (GLFW_MOD_CONTROL | GLFW_MOD_ALT));
            _glfwInputChar(window, cp, mods, plain);
        }
    }

    return xkb_keymap_key_repeats(_glfw.wl.xkb.keymap, syms[0]);
}
