; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_group_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_group_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_info = type { %struct.mask_info*, i32 }

@topology_mode = common dso_local global i32 0, align 4
@cpu_present_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mask_info*, i32)* @cpu_group_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_group_map(%struct.mask_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mask_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mask_info* %0, %struct.mask_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @cpumask_of(i32 %6)
  %8 = call i32 @cpumask_copy(i32* %5, i32 %7)
  %9 = load i32, i32* @topology_mode, align 4
  switch i32 %9, label %39 [
    i32 130, label %10
    i32 129, label %36
    i32 128, label %40
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %24, %10
  %12 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %13 = icmp ne %struct.mask_info* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %17 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %16, i32 0, i32 1
  %18 = call i32 @cpumask_test_cpu(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %22 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.mask_info*, %struct.mask_info** %3, align 8
  %26 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %25, i32 0, i32 0
  %27 = load %struct.mask_info*, %struct.mask_info** %26, align 8
  store %struct.mask_info* %27, %struct.mask_info** %3, align 8
  br label %11

28:                                               ; preds = %20, %11
  %29 = call i32 @cpumask_empty(i32* %5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @cpumask_of(i32 %32)
  %34 = call i32 @cpumask_copy(i32* %5, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @cpu_present_mask, align 4
  %38 = call i32 @cpumask_copy(i32* %5, i32 %37)
  br label %44

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %2, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @cpumask_of(i32 %41)
  %43 = call i32 @cpumask_copy(i32* %5, i32 %42)
  br label %44

44:                                               ; preds = %40, %36, %35
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
