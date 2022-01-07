; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_range.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, i32*)* @range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @range(float %0, float %1, float %2, i32* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load float, float* %8, align 4
  %13 = load float, float* %7, align 4
  %14 = fsub float %12, %13
  store float %14, float* %11, align 4
  %15 = load float, float* %11, align 4
  %16 = fpext float %15 to double
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load float, float* %7, align 4
  store float %24, float* %5, align 4
  br label %59

25:                                               ; preds = %4
  %26 = load float, float* %7, align 4
  %27 = load float, float* %6, align 4
  %28 = fadd float %26, %27
  %29 = load float, float* %11, align 4
  %30 = load float, float* %6, align 4
  %31 = fpext float %30 to double
  %32 = load float, float* %11, align 4
  %33 = fpext float %32 to double
  %34 = fdiv double %31, %33
  %35 = call i64 @floor(double %34)
  %36 = sitofp i64 %35 to float
  %37 = fmul float %29, %36
  %38 = fsub float %28, %37
  store float %38, float* %10, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %25
  %42 = load float, float* %10, align 4
  %43 = load float, float* %6, align 4
  %44 = fsub float %42, %43
  %45 = load float, float* %11, align 4
  %46 = fdiv float %44, %45
  %47 = fpext float %46 to double
  %48 = load float, float* %10, align 4
  %49 = load float, float* %6, align 4
  %50 = fcmp ogt float %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, double 5.000000e-01, double -5.000000e-01
  %53 = fadd double %47, %52
  %54 = fptosi double %53 to i32
  %55 = sub nsw i32 0, %54
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %25
  %58 = load float, float* %10, align 4
  store float %58, float* %5, align 4
  br label %59

59:                                               ; preds = %57, %23
  %60 = load float, float* %5, align 4
  ret float %60
}

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
