; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ratings = common dso_local global float* null, align 8
@translit = common dso_local global i64 0, align 8
@diff = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@try = common dso_local global i64 0, align 8
@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@prob = common dso_local global float** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @get_rating(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %4 = load float*, float** @ratings, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds float, float* %4, i64 %6
  %8 = load float, float* %7, align 4
  %9 = fadd float %8, 1.000000e+00
  %10 = call float @logf(float %9) #2
  %11 = call float @logf(float 2.000000e+00) #2
  %12 = fdiv float %10, %11
  store float %12, float* %3, align 4
  %13 = load i64, i64* @translit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  %17 = fpext float %16 to double
  %18 = fdiv double %17, 1.300000e+00
  %19 = fptrunc double %18 to float
  store float %19, float* %3, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @diff, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* @diff, align 4
  %25 = load i32, i32* @len, align 4
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %24, %26
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to float
  %30 = load float, float* %3, align 4
  %31 = fmul float %30, %29
  store float %31, float* %3, align 4
  %32 = load i32, i32* @len, align 4
  %33 = mul nsw i32 6, %32
  %34 = add nsw i32 %33, 3
  %35 = sitofp i32 %34 to float
  %36 = load float, float* %3, align 4
  %37 = fdiv float %36, %35
  store float %37, float* %3, align 4
  %38 = load i32, i32* @len, align 4
  %39 = icmp sle i32 %38, 6
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load i32, i32* @len, align 4
  %42 = sub nsw i32 7, %41
  %43 = sitofp i32 %42 to float
  %44 = load float, float* %3, align 4
  %45 = fdiv float %44, %43
  store float %45, float* %3, align 4
  br label %46

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i64, i64* @try, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load float, float* %3, align 4
  %52 = fdiv float %51, 1.000000e+01
  store float %52, float* %3, align 4
  %53 = load i64, i64* @translit, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load float, float* %3, align 4
  %57 = fdiv float %56, 2.000000e+00
  store float %57, float* %3, align 4
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %47
  %60 = load float, float* %3, align 4
  ret float %60
}

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
