; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_setCPUAverageValues.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_setCPUAverageValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CPU_METER_NICE = common dso_local global i64 0, align 8
@CPU_METER_NORMAL = common dso_local global i64 0, align 8
@CPU_METER_KERNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_7__*)* @Platform_setCPUAverageValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Platform_setCPUAverageValues(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @Platform_setCPUValues(%struct.TYPE_7__* %23, i32 %24)
  %26 = sitofp i64 %25 to double
  %27 = load double, double* %8, align 8
  %28 = fadd double %27, %26
  store double %28, double* %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = load i64, i64* @CPU_METER_NICE, align 8
  %33 = getelementptr inbounds double, double* %31, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %5, align 8
  %36 = fadd double %35, %34
  store double %36, double* %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  %40 = load i64, i64* @CPU_METER_NORMAL, align 8
  %41 = getelementptr inbounds double, double* %39, i64 %40
  %42 = load double, double* %41, align 8
  %43 = load double, double* %6, align 8
  %44 = fadd double %43, %42
  store double %44, double* %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = load i64, i64* @CPU_METER_KERNEL, align 8
  %49 = getelementptr inbounds double, double* %47, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double, double* %7, align 8
  %52 = fadd double %51, %50
  store double %52, double* %7, align 8
  br label %53

53:                                               ; preds = %22
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load double, double* %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %57, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  %64 = load i64, i64* @CPU_METER_NICE, align 8
  %65 = getelementptr inbounds double, double* %63, i64 %64
  store double %60, double* %65, align 8
  %66 = load double, double* %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %66, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load double*, double** %71, align 8
  %73 = load i64, i64* @CPU_METER_NORMAL, align 8
  %74 = getelementptr inbounds double, double* %72, i64 %73
  store double %69, double* %74, align 8
  %75 = load double, double* %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %75, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  %82 = load i64, i64* @CPU_METER_KERNEL, align 8
  %83 = getelementptr inbounds double, double* %81, i64 %82
  store double %78, double* %83, align 8
  %84 = load double, double* %8, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %84, %86
  ret double %87
}

declare dso_local i64 @Platform_setCPUValues(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
