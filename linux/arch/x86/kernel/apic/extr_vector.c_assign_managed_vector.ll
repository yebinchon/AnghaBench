; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_managed_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_assign_managed_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.apic_chip_data = type { i32, i64 }

@vector_searchmask = common dso_local global i32 0, align 4
@vector_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*)* @assign_managed_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_managed_vector(%struct.irq_data* %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca %struct.apic_chip_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %10)
  store %struct.cpumask* %11, %struct.cpumask** %6, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %12)
  store %struct.apic_chip_data* %13, %struct.apic_chip_data** %7, align 8
  %14 = load i32, i32* @vector_searchmask, align 4
  %15 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %16 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %17 = call i32 @cpumask_and(i32 %14, %struct.cpumask* %15, %struct.cpumask* %16)
  %18 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %19 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %24 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @vector_searchmask, align 4
  %27 = call i64 @cpumask_test_cpu(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %53

30:                                               ; preds = %22, %2
  %31 = load i32, i32* @vector_matrix, align 4
  %32 = load i32, i32* @vector_searchmask, align 4
  %33 = call i32 @irq_matrix_alloc_managed(i32 %31, i32 %32, i32* %9)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %35 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @trace_vector_alloc_managed(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %30
  %45 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @apic_update_vector(%struct.irq_data* %45, i32 %46, i32 %47)
  %49 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @apic_update_irq_cfg(%struct.irq_data* %49, i32 %50, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %42, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @cpumask_and(i32, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @irq_matrix_alloc_managed(i32, i32, i32*) #1

declare dso_local i32 @trace_vector_alloc_managed(i32, i32, i32) #1

declare dso_local i32 @apic_update_vector(%struct.irq_data*, i32, i32) #1

declare dso_local i32 @apic_update_irq_cfg(%struct.irq_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
