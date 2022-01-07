; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_SetCost.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_SetCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, float*)* @SetCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetCost(i64* %0, i64 %1, float* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store float* %2, float** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %21, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %9, align 8
  br label %10

24:                                               ; preds = %10
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @FastLog2(i64 %25)
  %27 = sitofp i64 %26 to float
  store float %27, float* %8, align 4
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %66, %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load float, float* %8, align 4
  %40 = fadd float %39, 2.000000e+00
  %41 = load float*, float** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds float, float* %41, i64 %42
  store float %40, float* %43, align 4
  br label %66

44:                                               ; preds = %32
  %45 = load float, float* %8, align 4
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @FastLog2(i64 %49)
  %51 = sitofp i64 %50 to float
  %52 = fsub float %45, %51
  %53 = load float*, float** %6, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds float, float* %53, i64 %54
  store float %52, float* %55, align 4
  %56 = load float*, float** %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds float, float* %56, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fcmp olt float %59, 1.000000e+00
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load float*, float** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds float, float* %62, i64 %63
  store float 1.000000e+00, float* %64, align 4
  br label %65

65:                                               ; preds = %61, %44
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %28

69:                                               ; preds = %28
  ret void
}

declare dso_local i64 @FastLog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
