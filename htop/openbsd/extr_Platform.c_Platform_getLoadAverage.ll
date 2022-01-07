; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_getLoadAverage.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_getLoadAverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loadavg = type { double, i64* }

@CTL_VM = common dso_local global i32 0, align 4
@VM_LOADAVG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Platform_getLoadAverage(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.loadavg, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %12 = load i32, i32* @CTL_VM, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @VM_LOADAVG, align 4
  store i32 %14, i32* %13, align 4
  store i64 16, i64* %9, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = call i32 @sysctl(i32* %15, i32 2, %struct.loadavg* %7, i64* %9, i32* null, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load double*, double** %4, align 8
  store double 0.000000e+00, double* %20, align 8
  %21 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %21, align 8
  %22 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %22, align 8
  br label %51

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fdiv double %28, %30
  %32 = load double*, double** %4, align 8
  store double %31, double* %32, align 8
  %33 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fdiv double %37, %39
  %41 = load double*, double** %5, align 8
  store double %40, double* %41, align 8
  %42 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %7, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fdiv double %46, %48
  %50 = load double*, double** %6, align 8
  store double %49, double* %50, align 8
  br label %51

51:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @sysctl(i32*, i32, %struct.loadavg*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
