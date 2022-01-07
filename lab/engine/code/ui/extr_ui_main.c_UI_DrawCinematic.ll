; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@SCREEN_WIDTH = common dso_local global float 0.000000e+00, align 4
@uiInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SCREEN_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float, float, float, float)* @UI_DrawCinematic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawCinematic(i32 %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = call i32 @UI_AdjustFrom640(float* %7, float* %8, float* %9, float* %10)
  %12 = load float, float* @SCREEN_WIDTH, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 0, i32 1), align 8
  %14 = sitofp i64 %13 to float
  %15 = fdiv float %12, %14
  %16 = load float, float* %7, align 4
  %17 = fmul float %16, %15
  store float %17, float* %7, align 4
  %18 = load float, float* @SCREEN_WIDTH, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 0, i32 1), align 8
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %18, %20
  %22 = load float, float* %9, align 4
  %23 = fmul float %22, %21
  store float %23, float* %9, align 4
  %24 = load float, float* @SCREEN_HEIGHT, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 0, i32 0), align 8
  %26 = sitofp i64 %25 to float
  %27 = fdiv float %24, %26
  %28 = load float, float* %8, align 4
  %29 = fmul float %28, %27
  store float %29, float* %8, align 4
  %30 = load float, float* @SCREEN_HEIGHT, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uiInfo, i32 0, i32 0, i32 0, i32 0), align 8
  %32 = sitofp i64 %31 to float
  %33 = fdiv float %30, %32
  %34 = load float, float* %10, align 4
  %35 = fmul float %34, %33
  store float %35, float* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load float, float* %7, align 4
  %38 = load float, float* %8, align 4
  %39 = load float, float* %9, align 4
  %40 = load float, float* %10, align 4
  %41 = call i32 @trap_CIN_SetExtents(i32 %36, float %37, float %38, float %39, float %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @trap_CIN_DrawCinematic(i32 %42)
  ret void
}

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_CIN_SetExtents(i32, float, float, float, float) #1

declare dso_local i32 @trap_CIN_DrawCinematic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
