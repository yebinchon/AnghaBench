; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_raw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_raw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i8*, i8* }
%struct.device = type { i32 }

@arc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @arc_pmu_raw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pmu_raw_alloc(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = load %struct.device*, %struct.device** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @devm_kmalloc_array(%struct.device* %4, i64 %8, i32 1, i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @devm_kmalloc_array(%struct.device* %23, i64 %27, i32 1, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %22
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* @__GFP_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @devm_kmalloc_array(%struct.device* %42, i64 %45, i32 1, i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %38, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @devm_kmalloc_array(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
