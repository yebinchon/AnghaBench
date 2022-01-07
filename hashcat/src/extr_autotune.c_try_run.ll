; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_autotune.c_try_run.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_autotune.c_try_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32*, i32, double }

@ATTACK_EXEC_INSIDE_KERNEL = common dso_local global i64 0, align 8
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@KERN_RUN_1 = common dso_local global i32 0, align 4
@KERN_RUN_4 = common dso_local global i32 0, align 4
@KERN_RUN_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32)* @try_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @try_run(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 28
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 29
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 30
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load double, double* %36, align 8
  store double %37, double* %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store double 0.000000e+00, double* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATTACK_EXEC_INSIDE_KERNEL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = load i32, i32* @KERN_RUN_1, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @run_kernel(%struct.TYPE_11__* %53, %struct.TYPE_9__* %54, i32 %55, i32 %56, i32 1, i32 0)
  br label %64

58:                                               ; preds = %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load i32, i32* @KERN_RUN_4, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @run_kernel(%struct.TYPE_11__* %59, %struct.TYPE_9__* %60, i32 %61, i32 %62, i32 1, i32 0)
  br label %64

64:                                               ; preds = %58, %52
  br label %71

65:                                               ; preds = %4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = load i32, i32* @KERN_RUN_2, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @run_kernel(%struct.TYPE_11__* %66, %struct.TYPE_9__* %67, i32 %68, i32 %69, i32 1, i32 0)
  br label %71

71:                                               ; preds = %65, %64
  %72 = load double, double* %11, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store double %72, double* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = call double @get_avg_exec_time(%struct.TYPE_9__* %75, i32 1)
  store double %76, double* %12, align 8
  %77 = load double, double* %12, align 8
  ret double %77
}

declare dso_local i32 @run_kernel(%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local double @get_avg_exec_time(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
