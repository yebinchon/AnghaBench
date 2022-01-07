; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_CenterGiantLine.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_scoreboard.c_CG_CenterGiantLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIANT_WIDTH = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@GIANT_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, i8*)* @CG_CenterGiantLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_CenterGiantLine(float %0, i8* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  store float %0, float* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 1, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @GIANT_WIDTH, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @CG_DrawStrlen(i8* %16)
  %18 = mul nsw i32 %15, %17
  %19 = sub nsw i32 640, %18
  %20 = sitofp i32 %19 to double
  %21 = fmul double 5.000000e-01, %20
  %22 = fptrunc double %21 to float
  store float %22, float* %5, align 4
  %23 = load float, float* %5, align 4
  %24 = load float, float* %3, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @qtrue, align 4
  %28 = load i32, i32* @qtrue, align 4
  %29 = load i32, i32* @GIANT_WIDTH, align 4
  %30 = load i32, i32* @GIANT_HEIGHT, align 4
  %31 = call i32 @CG_DrawStringExt(float %23, float %24, i8* %25, i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawStringExt(float, float, i8*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
