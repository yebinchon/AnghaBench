; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_AdjustFrom640.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_AdjustFrom640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_AdjustFrom640(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0, i32 0), align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 6.400000e+02
  %14 = fptrunc double %13 to float
  store float %14, float* %9, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0, i32 1), align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 4.800000e+02
  %18 = fptrunc double %17 to float
  store float %18, float* %10, align 4
  %19 = load float*, float** %5, align 8
  %20 = icmp ne float* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load float, float* %9, align 4
  %23 = load float*, float** %5, align 8
  %24 = load float, float* %23, align 4
  %25 = fmul float %24, %22
  store float %25, float* %23, align 4
  br label %26

26:                                               ; preds = %21, %4
  %27 = load float*, float** %6, align 8
  %28 = icmp ne float* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load float, float* %10, align 4
  %31 = load float*, float** %6, align 8
  %32 = load float, float* %31, align 4
  %33 = fmul float %32, %30
  store float %33, float* %31, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load float*, float** %7, align 8
  %36 = icmp ne float* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load float, float* %9, align 4
  %39 = load float*, float** %7, align 8
  %40 = load float, float* %39, align 4
  %41 = fmul float %40, %38
  store float %41, float* %39, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load float*, float** %8, align 8
  %44 = icmp ne float* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load float, float* %10, align 4
  %47 = load float*, float** %8, align 8
  %48 = load float, float* %47, align 4
  %49 = fmul float %48, %46
  store float %49, float* %47, align 4
  br label %50

50:                                               ; preds = %45, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
