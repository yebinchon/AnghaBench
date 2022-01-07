; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getLoadAverage.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getLoadAverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Platform_getLoadAverage(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [3 x double], align 16
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %9 = call i32 @getloadavg(double* %8, i32 3)
  %10 = icmp eq i32 3, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %13 = load double, double* %12, align 16
  %14 = load double*, double** %4, align 8
  store double %13, double* %14, align 8
  %15 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %19 = load double, double* %18, align 16
  %20 = load double*, double** %6, align 8
  store double %19, double* %20, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load double*, double** %4, align 8
  store double 0.000000e+00, double* %22, align 8
  %23 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %23, align 8
  %24 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %24, align 8
  br label %25

25:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @getloadavg(double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
