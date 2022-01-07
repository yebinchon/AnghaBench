; ModuleID = '/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_getLoadAverage.c'
source_filename = "/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_getLoadAverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plat_loadavg = common dso_local global double* null, align 8
@LOADAVG_1MIN = common dso_local global i64 0, align 8
@LOADAVG_5MIN = common dso_local global i64 0, align 8
@LOADAVG_15MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Platform_getLoadAverage(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** @plat_loadavg, align 8
  %8 = call i32 @getloadavg(double* %7, i32 3)
  %9 = load double*, double** @plat_loadavg, align 8
  %10 = load i64, i64* @LOADAVG_1MIN, align 8
  %11 = getelementptr inbounds double, double* %9, i64 %10
  %12 = load double, double* %11, align 8
  %13 = load double*, double** %4, align 8
  store double %12, double* %13, align 8
  %14 = load double*, double** @plat_loadavg, align 8
  %15 = load i64, i64* @LOADAVG_5MIN, align 8
  %16 = getelementptr inbounds double, double* %14, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %5, align 8
  store double %17, double* %18, align 8
  %19 = load double*, double** @plat_loadavg, align 8
  %20 = load i64, i64* @LOADAVG_15MIN, align 8
  %21 = getelementptr inbounds double, double* %19, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %6, align 8
  store double %22, double* %23, align 8
  ret void
}

declare dso_local i32 @getloadavg(double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
