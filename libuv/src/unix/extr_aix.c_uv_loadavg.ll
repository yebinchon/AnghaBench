; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_loadavg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double* }

@SBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_loadavg(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %2, align 8
  %5 = call i32 @perfstat_cpu_total(i32* null, %struct.TYPE_3__* %3, i32 8, i32 1)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load double*, double** %2, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  store double 0.000000e+00, double* %10, align 8
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  store double 0.000000e+00, double* %12, align 8
  %13 = load double*, double** %2, align 8
  %14 = getelementptr inbounds double, double* %13, i64 2
  store double 0.000000e+00, double* %14, align 8
  br label %46

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = load i32, i32* @SBITS, align 4
  %21 = shl i32 1, %20
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %19, %22
  %24 = load double*, double** %2, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  store double %23, double* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds double, double* %27, i64 1
  %29 = load double, double* %28, align 8
  %30 = load i32, i32* @SBITS, align 4
  %31 = shl i32 1, %30
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %29, %32
  %34 = load double*, double** %2, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  store double %33, double* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  %38 = getelementptr inbounds double, double* %37, i64 2
  %39 = load double, double* %38, align 8
  %40 = load i32, i32* @SBITS, align 4
  %41 = shl i32 1, %40
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %39, %42
  %44 = load double*, double** %2, align 8
  %45 = getelementptr inbounds double, double* %44, i64 2
  store double %43, double* %45, align 8
  br label %46

46:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @perfstat_cpu_total(i32*, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
