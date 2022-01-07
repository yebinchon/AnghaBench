; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawUpperRight.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawUpperRight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawTeamOverlay = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@cg_drawSnapshot = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cg_drawFPS = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@STEREO_CENTER = common dso_local global i64 0, align 8
@STEREO_RIGHT = common dso_local global i64 0, align 8
@cg_drawTimer = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cg_drawAttacker = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @CG_DrawUpperRight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawUpperRight(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca float, align 4
  store i64 %0, i64* %2, align 8
  store float 0.000000e+00, float* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %5 = load i64, i64* @GT_TEAM, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_drawTeamOverlay, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load float, float* %3, align 4
  %12 = load i32, i32* @qtrue, align 4
  %13 = load i32, i32* @qtrue, align 4
  %14 = call float @CG_DrawTeamOverlay(float %11, i32 %12, i32 %13)
  store float %14, float* %3, align 4
  br label %15

15:                                               ; preds = %10, %7, %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_drawSnapshot, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load float, float* %3, align 4
  %20 = call float @CG_DrawSnapshot(float %19)
  store float %20, float* %3, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_drawFPS, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @STEREO_CENTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @STEREO_RIGHT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = load float, float* %3, align 4
  %34 = call float @CG_DrawFPS(float %33)
  store float %34, float* %3, align 4
  br label %35

35:                                               ; preds = %32, %28, %21
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg_drawTimer, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load float, float* %3, align 4
  %40 = call float @CG_DrawTimer(float %39)
  store float %40, float* %3, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_drawAttacker, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load float, float* %3, align 4
  %46 = call i32 @CG_DrawAttacker(float %45)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local float @CG_DrawTeamOverlay(float, i32, i32) #1

declare dso_local float @CG_DrawSnapshot(float) #1

declare dso_local float @CG_DrawFPS(float) #1

declare dso_local float @CG_DrawTimer(float) #1

declare dso_local i32 @CG_DrawAttacker(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
