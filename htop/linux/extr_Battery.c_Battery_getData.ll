; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_Battery.c_Battery_getData.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_Battery.c_Battery_getData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Battery_cacheTime = common dso_local global i64 0, align 8
@Battery_cacheLevel = common dso_local global double 0.000000e+00, align 8
@Battery_cacheIsOnAC = common dso_local global i32 0, align 4
@Battery_method = common dso_local global i64 0, align 8
@BAT_PROC = common dso_local global i64 0, align 8
@BAT_SYS = common dso_local global i64 0, align 8
@BAT_ERR = common dso_local global i64 0, align 8
@AC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Battery_getData(double* %0, i32* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i64 @time(i32* null)
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @Battery_cacheTime, align 8
  %9 = add nsw i64 %8, 10
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load double, double* @Battery_cacheLevel, align 8
  %13 = load double*, double** %3, align 8
  store double %12, double* %13, align 8
  %14 = load i32, i32* @Battery_cacheIsOnAC, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i64, i64* @Battery_method, align 8
  %18 = load i64, i64* @BAT_PROC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load double*, double** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @Battery_getProcData(double* %21, i32* %22)
  %24 = load double*, double** %3, align 8
  %25 = load double, double* %24, align 8
  %26 = fcmp oeq double %25, 0.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @BAT_SYS, align 8
  store i64 %28, i64* @Battery_method, align 8
  br label %29

29:                                               ; preds = %27, %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i64, i64* @Battery_method, align 8
  %32 = load i64, i64* @BAT_SYS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load double*, double** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @Battery_getSysData(double* %35, i32* %36)
  %38 = load double*, double** %3, align 8
  %39 = load double, double* %38, align 8
  %40 = fcmp oeq double %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @BAT_ERR, align 8
  store i64 %42, i64* @Battery_method, align 8
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i64, i64* @Battery_method, align 8
  %46 = load i64, i64* @BAT_ERR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load double*, double** %3, align 8
  store double -1.000000e+00, double* %49, align 8
  %50 = load i32, i32* @AC_ERROR, align 4
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load double*, double** %3, align 8
  %54 = load double, double* %53, align 8
  %55 = fcmp ogt double %54, 1.000000e+02
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load double*, double** %3, align 8
  store double 1.000000e+02, double* %57, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load double*, double** %3, align 8
  %60 = load double, double* %59, align 8
  store double %60, double* @Battery_cacheLevel, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @Battery_cacheIsOnAC, align 4
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* @Battery_cacheTime, align 8
  br label %64

64:                                               ; preds = %58, %11
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @Battery_getProcData(double*, i32*) #1

declare dso_local i32 @Battery_getSysData(double*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
