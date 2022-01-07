; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Battery.c_Battery_getData.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Battery.c_Battery_getData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor = type { double }
%struct.sensordev = type { i32 }

@Battery_getData.mib = internal global [5 x i32] [i32 129, i32 128, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [9 x i8] c"acpibat0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"acpiac0\00", align 1
@AC_ERROR = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Battery_getData(double* %0, double* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.sensor, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sensordev, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  store i64 8, i64* %6, align 8
  store i64 4, i64* %8, align 8
  %12 = call i32 @findDevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 0), %struct.sensordev* %7, i64* %8)
  store i32 %12, i32* %9, align 4
  %13 = load double*, double** %3, align 8
  store double -1.000000e+00, double* %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  store i32 7, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 4), align 16
  store double 0.000000e+00, double* %10, align 8
  %17 = call i32 @sysctl(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 0), i32 5, %struct.sensor* %5, i64* %6, i32* null, i32 0)
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sensor, %struct.sensor* %5, i32 0, i32 0
  %21 = load double, double* %20, align 8
  store double %21, double* %10, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load double, double* %10, align 8
  %24 = fcmp ogt double %23, 0.000000e+00
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  store i32 7, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 3), align 4
  store i32 3, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 4), align 16
  %26 = call i32 @sysctl(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 0), i32 5, %struct.sensor* %5, i64* %6, i32* null, i32 0)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.sensor, %struct.sensor* %5, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %11, align 8
  %31 = load double, double* %11, align 8
  %32 = load double, double* %10, align 8
  %33 = fdiv double %31, %32
  %34 = fmul double 1.000000e+02, %33
  %35 = load double*, double** %3, align 8
  store double %34, double* %35, align 8
  %36 = load double, double* %11, align 8
  %37 = load double, double* %10, align 8
  %38 = fcmp oge double %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load double*, double** %3, align 8
  store double 1.000000e+02, double* %40, align 8
  br label %41

41:                                               ; preds = %39, %28
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %22
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 @findDevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 0), %struct.sensordev* %7, i64* %8)
  store i32 %45, i32* %9, align 4
  %46 = load double, double* @AC_ERROR, align 8
  %47 = load double*, double** %4, align 8
  store double %46, double* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  store i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 4), align 16
  %51 = call i32 @sysctl(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @Battery_getData.mib, i64 0, i64 0), i32 5, %struct.sensor* %5, i64* %6, i32* null, i32 0)
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sensor, %struct.sensor* %5, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %4, align 8
  store double %55, double* %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %44
  ret void
}

declare dso_local i32 @findDevice(i8*, i32*, %struct.sensordev*, i64*) #1

declare dso_local i32 @sysctl(i32*, i32, %struct.sensor*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
