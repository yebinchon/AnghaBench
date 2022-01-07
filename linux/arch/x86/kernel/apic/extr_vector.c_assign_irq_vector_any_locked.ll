; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_irq_vector_any_locked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_irq_vector_any_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_data = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@vector_searchmask = common dso_local global %struct.cpumask* null, align 8
@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @assign_irq_vector_any_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_irq_vector_any_locked(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %6)
  store %struct.cpumask* %7, %struct.cpumask** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call i32 @irq_data_get_node(%struct.irq_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NUMA_NO_NODE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.cpumask*, %struct.cpumask** @vector_searchmask, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.cpumask* @cpumask_of_node(i32 %16)
  %18 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %19 = call i32 @cpumask_and(%struct.cpumask* %15, %struct.cpumask* %17, %struct.cpumask* %18)
  %20 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %21 = load %struct.cpumask*, %struct.cpumask** @vector_searchmask, align 8
  %22 = call i32 @assign_vector_locked(%struct.irq_data* %20, %struct.cpumask* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %47

25:                                               ; preds = %14
  %26 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.cpumask* @cpumask_of_node(i32 %27)
  %29 = call i32 @assign_vector_locked(%struct.irq_data* %26, %struct.cpumask* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %47

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.cpumask*, %struct.cpumask** @vector_searchmask, align 8
  %35 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %36 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %37 = call i32 @cpumask_and(%struct.cpumask* %34, %struct.cpumask* %35, %struct.cpumask* %36)
  %38 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %39 = load %struct.cpumask*, %struct.cpumask** @vector_searchmask, align 8
  %40 = call i32 @assign_vector_locked(%struct.irq_data* %38, %struct.cpumask* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %45 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %46 = call i32 @assign_vector_locked(%struct.irq_data* %44, %struct.cpumask* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %42, %31, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @irq_data_get_node(%struct.irq_data*) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @assign_vector_locked(%struct.irq_data*, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
