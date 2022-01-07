; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_AngleDiff.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_AngleDiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AngleDiff(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fsub float %6, %7
  store float %8, float* %5, align 4
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load float, float* %5, align 4
  %14 = fpext float %13 to double
  %15 = fcmp ogt double %14, 1.800000e+02
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load float, float* %5, align 4
  %18 = fpext float %17 to double
  %19 = fsub double %18, 3.600000e+02
  %20 = fptrunc double %19 to float
  store float %20, float* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  br label %32

22:                                               ; preds = %2
  %23 = load float, float* %5, align 4
  %24 = fpext float %23 to double
  %25 = fcmp olt double %24, -1.800000e+02
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load float, float* %5, align 4
  %28 = fpext float %27 to double
  %29 = fadd double %28, 3.600000e+02
  %30 = fptrunc double %29 to float
  store float %30, float* %5, align 4
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %21
  %33 = load float, float* %5, align 4
  ret float %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
