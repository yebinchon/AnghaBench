; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCrosshairNames.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawCrosshairNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@cg_drawCrosshair = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@cg_drawCrosshairNames = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BIGCHAR_WIDTH = common dso_local global float 0.000000e+00, align 4
@ITEM_TEXTSTYLE_SHADOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawCrosshairNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawCrosshairNames() #0 {
  %1 = alloca float*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_drawCrosshair, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %44

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg_drawCrosshairNames, i32 0, i32 0), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %44

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %44

15:                                               ; preds = %11
  %16 = call i32 (...) @CG_ScanForCrosshairEntity()
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 8
  %18 = call float* @CG_FadeColor(i32 %17, i32 1000)
  store float* %18, float** %1, align 8
  %19 = load float*, float** %1, align 8
  %20 = icmp ne float* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @trap_R_SetColor(i32* null)
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call float @CG_DrawStrlen(i8* %29)
  %31 = load float, float* @BIGCHAR_WIDTH, align 4
  %32 = fmul float %30, %31
  store float %32, float* %3, align 4
  %33 = load float, float* %3, align 4
  %34 = fdiv float %33, 2.000000e+00
  %35 = fsub float 3.200000e+02, %34
  %36 = fptosi float %35 to i32
  %37 = load i8*, i8** %2, align 8
  %38 = load float*, float** %1, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  %40 = load float, float* %39, align 4
  %41 = fmul float %40, 5.000000e-01
  %42 = call i32 @CG_DrawBigString(i32 %36, i32 170, i8* %37, float %41)
  %43 = call i32 @trap_R_SetColor(i32* null)
  br label %44

44:                                               ; preds = %23, %21, %14, %10, %6
  ret void
}

declare dso_local i32 @CG_ScanForCrosshairEntity(...) #1

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local float @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
