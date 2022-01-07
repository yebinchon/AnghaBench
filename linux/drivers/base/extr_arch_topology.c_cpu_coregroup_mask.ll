; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_arch_topology.c_cpu_coregroup_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_arch_topology.c_cpu_coregroup_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { i32 }

@cpu_topology = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpumask* @cpu_coregroup_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @cpu_to_node(i32 %4)
  %6 = call %struct.cpumask* @cpumask_of_node(i32 %5)
  store %struct.cpumask* %6, %struct.cpumask** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_topology, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %13 = call i64 @cpumask_subset(%struct.cpumask* %11, %struct.cpumask* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_topology, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store %struct.cpumask* %20, %struct.cpumask** %3, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_topology, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_topology, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %36 = call i64 @cpumask_subset(%struct.cpumask* %34, %struct.cpumask* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_topology, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.cpumask* %43, %struct.cpumask** %3, align 8
  br label %44

44:                                               ; preds = %38, %29
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  ret %struct.cpumask* %46
}

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @cpumask_subset(%struct.cpumask*, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
