; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_alloc_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_alloc_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UNCORE_PMU_HRTIMER_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_uncore_box* (%struct.intel_uncore_type*, i32)* @uncore_alloc_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_uncore_box* @uncore_alloc_box(%struct.intel_uncore_type* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.intel_uncore_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_uncore_box*, align 8
  store %struct.intel_uncore_type* %0, %struct.intel_uncore_type** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %4, align 8
  %11 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 32, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.intel_uncore_box* @kzalloc_node(i32 %18, i32 %19, i32 %20)
  store %struct.intel_uncore_box* %21, %struct.intel_uncore_box** %9, align 8
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %23 = icmp ne %struct.intel_uncore_box* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store %struct.intel_uncore_box* null, %struct.intel_uncore_box** %3, align 8
  br label %58

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %32 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @raw_spin_lock_init(i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %44 = call i32 @uncore_pmu_init_hrtimer(%struct.intel_uncore_box* %43)
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %46 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %48 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %50 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 8
  %51 = load i32, i32* @UNCORE_PMU_HRTIMER_INTERVAL, align 4
  %52 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %53 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  %55 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %54, i32 0, i32 3
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %9, align 8
  store %struct.intel_uncore_box* %57, %struct.intel_uncore_box** %3, align 8
  br label %58

58:                                               ; preds = %42, %24
  %59 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  ret %struct.intel_uncore_box* %59
}

declare dso_local %struct.intel_uncore_box* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @uncore_pmu_init_hrtimer(%struct.intel_uncore_box*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
