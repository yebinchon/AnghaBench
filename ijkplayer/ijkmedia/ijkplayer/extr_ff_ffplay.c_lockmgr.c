
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVLockOp { ____Placeholder_AVLockOp } AVLockOp ;






 int AV_LOG_FATAL ;
 void* SDL_CreateMutex () ;
 int SDL_DestroyMutex (void*) ;
 int SDL_GetError () ;
 int SDL_LockMutex (void*) ;
 int SDL_UnlockMutex (void*) ;
 int av_log (int *,int ,char*,int ) ;

__attribute__((used)) static int lockmgr(void **mtx, enum AVLockOp op)
{
    switch (op) {
    case 131:
        *mtx = SDL_CreateMutex();
        if (!*mtx) {
            av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", SDL_GetError());
            return 1;
        }
        return 0;
    case 129:
        return !!SDL_LockMutex(*mtx);
    case 128:
        return !!SDL_UnlockMutex(*mtx);
    case 130:
        SDL_DestroyMutex(*mtx);
        return 0;
    }
    return 1;
}
