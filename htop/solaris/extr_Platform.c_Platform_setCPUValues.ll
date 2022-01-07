; ModuleID = '/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_setCPUValues.c'
source_filename = "/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_setCPUValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { double, double, double, double, double }

@CPU_METER_NICE = common dso_local global i64 0, align 8
@CPU_METER_NORMAL = common dso_local global i64 0, align 8
@CPU_METER_KERNEL = common dso_local global i64 0, align 8
@CPU_METER_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @Platform_setCPUValues(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = bitcast %struct.TYPE_9__* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 0
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %7, align 8
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  store double* %36, double** %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load double*, double** %9, align 8
  %41 = load i64, i64* @CPU_METER_NICE, align 8
  %42 = getelementptr inbounds double, double* %40, i64 %41
  store double %39, double* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load double*, double** %9, align 8
  %47 = load i64, i64* @CPU_METER_NORMAL, align 8
  %48 = getelementptr inbounds double, double* %46, i64 %47
  store double %45, double* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %33
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %9, align 8
  %62 = load i64, i64* @CPU_METER_KERNEL, align 8
  %63 = getelementptr inbounds double, double* %61, i64 %62
  store double %60, double* %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %9, align 8
  %68 = load i64, i64* @CPU_METER_IRQ, align 8
  %69 = getelementptr inbounds double, double* %67, i64 %68
  store double %66, double* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = call i32 @Meter_setItems(%struct.TYPE_11__* %70, i32 4)
  %72 = load double*, double** %9, align 8
  %73 = getelementptr inbounds double, double* %72, i64 0
  %74 = load double, double* %73, align 8
  %75 = load double*, double** %9, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  %77 = load double, double* %76, align 8
  %78 = fadd double %74, %77
  %79 = load double*, double** %9, align 8
  %80 = getelementptr inbounds double, double* %79, i64 2
  %81 = load double, double* %80, align 8
  %82 = fadd double %78, %81
  %83 = load double*, double** %9, align 8
  %84 = getelementptr inbounds double, double* %83, i64 3
  %85 = load double, double* %84, align 8
  %86 = fadd double %82, %85
  store double %86, double* %8, align 8
  br label %106

87:                                               ; preds = %33
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load double, double* %89, align 8
  %91 = load double*, double** %9, align 8
  %92 = getelementptr inbounds double, double* %91, i64 2
  store double %90, double* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = call i32 @Meter_setItems(%struct.TYPE_11__* %93, i32 3)
  %95 = load double*, double** %9, align 8
  %96 = getelementptr inbounds double, double* %95, i64 0
  %97 = load double, double* %96, align 8
  %98 = load double*, double** %9, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  %100 = load double, double* %99, align 8
  %101 = fadd double %97, %100
  %102 = load double*, double** %9, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  %104 = load double, double* %103, align 8
  %105 = fadd double %101, %104
  store double %105, double* %8, align 8
  br label %106

106:                                              ; preds = %87, %57
  %107 = load double, double* %8, align 8
  %108 = call double @CLAMP(double %107, double 0.000000e+00, double 1.000000e+02)
  store double %108, double* %8, align 8
  %109 = load double, double* %8, align 8
  %110 = call i64 @isnan(double %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store double 0.000000e+00, double* %8, align 8
  br label %113

113:                                              ; preds = %112, %106
  %114 = load double, double* %8, align 8
  ret double %114
}

declare dso_local i32 @Meter_setItems(%struct.TYPE_11__*, i32) #1

declare dso_local double @CLAMP(double, double, double) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
