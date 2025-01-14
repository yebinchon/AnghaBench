
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPUSHDEBUGGROUPPROC ;
typedef scalar_t__ PFNGLPOPDEBUGGROUPPROC ;
typedef scalar_t__ PFNGLOBJECTPTRLABELPROC ;
typedef scalar_t__ PFNGLOBJECTLABELPROC ;
typedef scalar_t__ PFNGLGETPOINTERVPROC ;
typedef scalar_t__ PFNGLGETOBJECTPTRLABELPROC ;
typedef scalar_t__ PFNGLGETOBJECTLABELPROC ;
typedef scalar_t__ PFNGLGETDEBUGMESSAGELOGPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEINSERTPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECONTROLPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECALLBACKPROC ;
typedef scalar_t__ (* GLADuserptrloadfunc ) (char*,void*) ;


 int GLAD_GL_KHR_debug ;
 scalar_t__ glDebugMessageCallback ;
 scalar_t__ glDebugMessageControl ;
 scalar_t__ glDebugMessageInsert ;
 scalar_t__ glGetDebugMessageLog ;
 scalar_t__ glGetObjectLabel ;
 scalar_t__ glGetObjectPtrLabel ;
 scalar_t__ glGetPointerv ;
 scalar_t__ glObjectLabel ;
 scalar_t__ glObjectPtrLabel ;
 scalar_t__ glPopDebugGroup ;
 scalar_t__ glPushDebugGroup ;

__attribute__((used)) static void glad_gl_load_GL_KHR_debug( GLADuserptrloadfunc load, void* userptr) {
    if(!GLAD_GL_KHR_debug) return;
    glDebugMessageCallback = (PFNGLDEBUGMESSAGECALLBACKPROC) load("glDebugMessageCallback", userptr);
    glDebugMessageControl = (PFNGLDEBUGMESSAGECONTROLPROC) load("glDebugMessageControl", userptr);
    glDebugMessageInsert = (PFNGLDEBUGMESSAGEINSERTPROC) load("glDebugMessageInsert", userptr);
    glGetDebugMessageLog = (PFNGLGETDEBUGMESSAGELOGPROC) load("glGetDebugMessageLog", userptr);
    glGetObjectLabel = (PFNGLGETOBJECTLABELPROC) load("glGetObjectLabel", userptr);
    glGetObjectPtrLabel = (PFNGLGETOBJECTPTRLABELPROC) load("glGetObjectPtrLabel", userptr);
    glGetPointerv = (PFNGLGETPOINTERVPROC) load("glGetPointerv", userptr);
    glObjectLabel = (PFNGLOBJECTLABELPROC) load("glObjectLabel", userptr);
    glObjectPtrLabel = (PFNGLOBJECTPTRLABELPROC) load("glObjectPtrLabel", userptr);
    glPopDebugGroup = (PFNGLPOPDEBUGGROUPPROC) load("glPopDebugGroup", userptr);
    glPushDebugGroup = (PFNGLPUSHDEBUGGROUPPROC) load("glPushDebugGroup", userptr);
}
