; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_set_performance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_set_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@CA15_DVFS = common dso_local global i32 0, align 4
@PERF_LVL_A15 = common dso_local global i64 0, align 8
@CA7_DVFS = common dso_local global i32 0, align 4
@PERF_LVL_A7 = common dso_local global i64 0, align 8
@info = common dso_local global %struct.TYPE_2__* null, align 8
@TIMEOUT_US = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @ve_spc_set_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ve_spc_set_performance(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @cluster_is_a15(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @CA15_DVFS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* @PERF_LVL_A15, align 8
  store i64 %15, i64* %6, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @CA7_DVFS, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* @PERF_LVL_A7, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ve_spc_find_performance_index(i32 %20, i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @TIMEOUT_US, align 4
  %31 = call i32 @usecs_to_jiffies(i32 %30)
  %32 = call i64 @down_timeout(i32* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ETIME, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = call i32 @init_completion(i32* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @RESPONSE_MASK(i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ve_spc_waitforcompletion(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @up(i32* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %37, %34, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @cluster_is_a15(i32) #1

declare dso_local i32 @ve_spc_find_performance_index(i32, i64) #1

declare dso_local i64 @down_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @RESPONSE_MASK(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ve_spc_waitforcompletion(i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
