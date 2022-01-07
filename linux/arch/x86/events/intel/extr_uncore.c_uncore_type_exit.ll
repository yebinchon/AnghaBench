; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_type_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_type_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_type = type { i32, %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu* }
%struct.intel_uncore_pmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_type*)* @uncore_type_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_type_exit(%struct.intel_uncore_type* %0) #0 {
  %2 = alloca %struct.intel_uncore_type*, align 8
  %3 = alloca %struct.intel_uncore_pmu*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uncore_type* %0, %struct.intel_uncore_type** %2, align 8
  %5 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %6 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %5, i32 0, i32 2
  %7 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %6, align 8
  store %struct.intel_uncore_pmu* %7, %struct.intel_uncore_pmu** %3, align 8
  %8 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %3, align 8
  %9 = icmp ne %struct.intel_uncore_pmu* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %14 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %3, align 8
  %19 = call i32 @uncore_pmu_unregister(%struct.intel_uncore_pmu* %18)
  %20 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %3, align 8
  %21 = call i32 @uncore_free_boxes(%struct.intel_uncore_pmu* %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %3, align 8
  %26 = getelementptr inbounds %struct.intel_uncore_pmu, %struct.intel_uncore_pmu* %25, i32 1
  store %struct.intel_uncore_pmu* %26, %struct.intel_uncore_pmu** %3, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %29 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %28, i32 0, i32 2
  %30 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %29, align 8
  %31 = call i32 @kfree(%struct.intel_uncore_pmu* %30)
  %32 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %33 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %32, i32 0, i32 2
  store %struct.intel_uncore_pmu* null, %struct.intel_uncore_pmu** %33, align 8
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %36 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %35, i32 0, i32 1
  %37 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %36, align 8
  %38 = call i32 @kfree(%struct.intel_uncore_pmu* %37)
  %39 = load %struct.intel_uncore_type*, %struct.intel_uncore_type** %2, align 8
  %40 = getelementptr inbounds %struct.intel_uncore_type, %struct.intel_uncore_type* %39, i32 0, i32 1
  store %struct.intel_uncore_pmu* null, %struct.intel_uncore_pmu** %40, align 8
  ret void
}

declare dso_local i32 @uncore_pmu_unregister(%struct.intel_uncore_pmu*) #1

declare dso_local i32 @uncore_free_boxes(%struct.intel_uncore_pmu*) #1

declare dso_local i32 @kfree(%struct.intel_uncore_pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
