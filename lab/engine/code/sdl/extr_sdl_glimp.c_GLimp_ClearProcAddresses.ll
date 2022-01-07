; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_ClearProcAddresses.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_glimp.c_GLimp_ClearProcAddresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qglMajorVersion = common dso_local global i64 0, align 8
@qglMinorVersion = common dso_local global i64 0, align 8
@qglesMajorVersion = common dso_local global i64 0, align 8
@qglesMinorVersion = common dso_local global i64 0, align 8
@QGL_1_1_PROCS = common dso_local global i32 0, align 4
@QGL_1_1_FIXED_FUNCTION_PROCS = common dso_local global i32 0, align 4
@QGL_DESKTOP_1_1_PROCS = common dso_local global i32 0, align 4
@QGL_DESKTOP_1_1_FIXED_FUNCTION_PROCS = common dso_local global i32 0, align 4
@QGL_ES_1_1_PROCS = common dso_local global i32 0, align 4
@QGL_ES_1_1_FIXED_FUNCTION_PROCS = common dso_local global i32 0, align 4
@QGL_1_3_PROCS = common dso_local global i32 0, align 4
@QGL_1_5_PROCS = common dso_local global i32 0, align 4
@QGL_2_0_PROCS = common dso_local global i32 0, align 4
@QGL_3_0_PROCS = common dso_local global i32 0, align 4
@QGL_ARB_occlusion_query_PROCS = common dso_local global i32 0, align 4
@QGL_ARB_framebuffer_object_PROCS = common dso_local global i32 0, align 4
@QGL_ARB_vertex_array_object_PROCS = common dso_local global i32 0, align 4
@QGL_EXT_direct_state_access_PROCS = common dso_local global i32 0, align 4
@qglActiveTextureARB = common dso_local global i32* null, align 8
@qglClientActiveTextureARB = common dso_local global i32* null, align 8
@qglMultiTexCoord2fARB = common dso_local global i32* null, align 8
@qglLockArraysEXT = common dso_local global i32* null, align 8
@qglUnlockArraysEXT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GLimp_ClearProcAddresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GLimp_ClearProcAddresses() #0 {
  store i64 0, i64* @qglMajorVersion, align 8
  store i64 0, i64* @qglMinorVersion, align 8
  store i64 0, i64* @qglesMajorVersion, align 8
  store i64 0, i64* @qglesMinorVersion, align 8
  %1 = load i32, i32* @QGL_1_1_PROCS, align 4
  %2 = load i32, i32* @QGL_1_1_FIXED_FUNCTION_PROCS, align 4
  %3 = load i32, i32* @QGL_DESKTOP_1_1_PROCS, align 4
  %4 = load i32, i32* @QGL_DESKTOP_1_1_FIXED_FUNCTION_PROCS, align 4
  %5 = load i32, i32* @QGL_ES_1_1_PROCS, align 4
  %6 = load i32, i32* @QGL_ES_1_1_FIXED_FUNCTION_PROCS, align 4
  %7 = load i32, i32* @QGL_1_3_PROCS, align 4
  %8 = load i32, i32* @QGL_1_5_PROCS, align 4
  %9 = load i32, i32* @QGL_2_0_PROCS, align 4
  %10 = load i32, i32* @QGL_3_0_PROCS, align 4
  %11 = load i32, i32* @QGL_ARB_occlusion_query_PROCS, align 4
  %12 = load i32, i32* @QGL_ARB_framebuffer_object_PROCS, align 4
  %13 = load i32, i32* @QGL_ARB_vertex_array_object_PROCS, align 4
  %14 = load i32, i32* @QGL_EXT_direct_state_access_PROCS, align 4
  store i32* null, i32** @qglActiveTextureARB, align 8
  store i32* null, i32** @qglClientActiveTextureARB, align 8
  store i32* null, i32** @qglMultiTexCoord2fARB, align 8
  store i32* null, i32** @qglLockArraysEXT, align 8
  store i32* null, i32** @qglUnlockArraysEXT, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
