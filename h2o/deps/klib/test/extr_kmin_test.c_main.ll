; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kmin_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kmin_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"\0AMinimizer: Hooke-Jeeves\0A\00", align 1
@n_evals = common dso_local global i64 0, align 8
@f_Chebyquad = common dso_local global i32 0, align 4
@KMIN_RADIUS = common dso_local global i32 0, align 4
@KMIN_EPS = common dso_local global i32 0, align 4
@KMIN_MAXCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"n=%d,min=%.8lg,n_evals=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [20 x double], align 16
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %7

7:                                                ; preds = %40, %0
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 8
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = sitofp i32 %17 to double
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x double], [20 x double]* %2, i64 0, i64 %23
  store double %21, double* %24, align 8
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  store i64 0, i64* @n_evals, align 8
  %29 = load i32, i32* @f_Chebyquad, align 4
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [20 x double], [20 x double]* %2, i64 0, i64 0
  %32 = load i32, i32* @KMIN_RADIUS, align 4
  %33 = load i32, i32* @KMIN_EPS, align 4
  %34 = load i32, i32* @KMIN_MAXCALL, align 4
  %35 = call double @kmin_hj(i32 %29, i32 %30, double* %31, i32 0, i32 %32, i32 %33, i32 %34)
  store double %35, double* %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load double, double* %3, align 8
  %38 = load i64, i64* @n_evals, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36, double %37, i64 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %4, align 4
  br label %7

43:                                               ; preds = %7
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local double @kmin_hj(i32, i32, double*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
