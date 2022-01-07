; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_setCPUValues.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_setCPUValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64* }

@CPU_STATE_MAX = common dso_local global i64 0, align 8
@CPU_STATE_NICE = common dso_local global i64 0, align 8
@CPU_METER_NICE = common dso_local global i64 0, align 8
@CPU_STATE_USER = common dso_local global i64 0, align 8
@CPU_METER_NORMAL = common dso_local global i64 0, align 8
@CPU_STATE_SYSTEM = common dso_local global i64 0, align 8
@CPU_METER_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @Platform_setCPUValues(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call double @Platform_setCPUAverageValues(%struct.TYPE_8__* %14)
  store double %15, double* %3, align 8
  br label %154

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %26
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %7, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %33
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %57, %16
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @CPU_STATE_MAX, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fsub double %46, %53
  %55 = load double, double* %9, align 8
  %56 = fadd double %55, %54
  store double %56, double* %9, align 8
  br label %57

57:                                               ; preds = %39
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %35

60:                                               ; preds = %35
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @CPU_STATE_NICE, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @CPU_STATE_NICE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = fsub double %67, %74
  %76 = fmul double %75, 1.000000e+02
  %77 = load double, double* %9, align 8
  %78 = fdiv double %76, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  %82 = load i64, i64* @CPU_METER_NICE, align 8
  %83 = getelementptr inbounds double, double* %81, i64 %82
  store double %78, double* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @CPU_STATE_USER, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @CPU_STATE_USER, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = fsub double %90, %97
  %99 = fmul double %98, 1.000000e+02
  %100 = load double, double* %9, align 8
  %101 = fdiv double %99, %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load double*, double** %103, align 8
  %105 = load i64, i64* @CPU_METER_NORMAL, align 8
  %106 = getelementptr inbounds double, double* %104, i64 %105
  store double %101, double* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @CPU_STATE_SYSTEM, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = sitofp i64 %112 to double
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @CPU_STATE_SYSTEM, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = sitofp i64 %119 to double
  %121 = fsub double %113, %120
  %122 = fmul double %121, 1.000000e+02
  %123 = load double, double* %9, align 8
  %124 = fdiv double %122, %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load double*, double** %126, align 8
  %128 = load i64, i64* @CPU_METER_KERNEL, align 8
  %129 = getelementptr inbounds double, double* %127, i64 %128
  store double %124, double* %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = call i32 @Meter_setItems(%struct.TYPE_8__* %130, i32 3)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load double*, double** %133, align 8
  %135 = load i64, i64* @CPU_METER_NICE, align 8
  %136 = getelementptr inbounds double, double* %134, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load double*, double** %139, align 8
  %141 = load i64, i64* @CPU_METER_NORMAL, align 8
  %142 = getelementptr inbounds double, double* %140, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fadd double %137, %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load double*, double** %146, align 8
  %148 = load i64, i64* @CPU_METER_KERNEL, align 8
  %149 = getelementptr inbounds double, double* %147, i64 %148
  %150 = load double, double* %149, align 8
  %151 = fadd double %144, %150
  store double %151, double* %9, align 8
  %152 = load double, double* %9, align 8
  %153 = call double @CLAMP(double %152, double 0.000000e+00, double 1.000000e+02)
  store double %153, double* %3, align 8
  br label %154

154:                                              ; preds = %60, %13
  %155 = load double, double* %3, align 8
  ret double %155
}

declare dso_local double @Platform_setCPUAverageValues(%struct.TYPE_8__*) #1

declare dso_local i32 @Meter_setItems(%struct.TYPE_8__*, i32) #1

declare dso_local double @CLAMP(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
