
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int X; } ;
struct TYPE_8__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_9__ {TYPE_1__ dwSize; TYPE_2__ dwCursorPosition; } ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ COORD ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;


 int FillConsoleOutputCharacterW (scalar_t__,int,int ,TYPE_2__,int *) ;
 int GetConsoleScreenBufferInfo (scalar_t__,TYPE_3__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetConsoleCursorPosition (scalar_t__,TYPE_2__) ;
 scalar_t__ _get_osfhandle (int ) ;
 int fileno (int ) ;
 int stderr ;

__attribute__((used)) static int clear_line(void) {
  HANDLE handle;
  CONSOLE_SCREEN_BUFFER_INFO info;
  COORD coord;
  DWORD written;

  handle = (HANDLE)_get_osfhandle(fileno(stderr));
  if (handle == INVALID_HANDLE_VALUE)
    return -1;

  if (!GetConsoleScreenBufferInfo(handle, &info))
    return -1;

  coord = info.dwCursorPosition;
  if (coord.Y <= 0)
    return -1;

  coord.X = 0;

  if (!SetConsoleCursorPosition(handle, coord))
    return -1;

  if (!FillConsoleOutputCharacterW(handle,
                                   0x20,
                                   info.dwSize.X,
                                   coord,
                                   &written)) {
    return -1;
  }

  return 0;
}
