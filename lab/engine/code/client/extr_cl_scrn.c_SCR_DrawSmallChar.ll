; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawSmallChar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_DrawSmallChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32, float, float, float, float, i32)* }
%struct.TYPE_4__ = type { i32 }

@SMALLCHAR_HEIGHT = common dso_local global i32 0, align 4
@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_DrawSmallChar(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %51

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %51

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double %29, 6.250000e-02
  %31 = fptrunc double %30 to float
  store float %31, float* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double %33, 6.250000e-02
  %35 = fptrunc double %34 to float
  store float %35, float* %10, align 4
  store float 6.250000e-02, float* %11, align 4
  %36 = load i32 (i32, i32, i32, i32, float, float, float, float, i32)*, i32 (i32, i32, i32, i32, float, float, float, float, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %40 = load i32, i32* @SMALLCHAR_HEIGHT, align 4
  %41 = load float, float* %10, align 4
  %42 = load float, float* %9, align 4
  %43 = load float, float* %10, align 4
  %44 = load float, float* %11, align 4
  %45 = fadd float %43, %44
  %46 = load float, float* %9, align 4
  %47 = load float, float* %11, align 4
  %48 = fadd float %46, %47
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  %50 = call i32 %36(i32 %37, i32 %38, i32 %39, i32 %40, float %41, float %42, float %45, float %48, i32 %49)
  br label %51

51:                                               ; preds = %23, %22, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
