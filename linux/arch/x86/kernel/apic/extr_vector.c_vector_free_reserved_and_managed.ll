; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_vector_free_reserved_and_managed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_vector_free_reserved_and_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.apic_chip_data = type { i64, i64 }

@vector_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vector_free_reserved_and_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_free_reserved_and_managed(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca %struct.apic_chip_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data* %5)
  store %struct.cpumask* %6, %struct.cpumask** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %7)
  store %struct.apic_chip_data* %8, %struct.apic_chip_data** %4, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.apic_chip_data*, %struct.apic_chip_data** %4, align 8
  %13 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.apic_chip_data*, %struct.apic_chip_data** %4, align 8
  %16 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @trace_vector_teardown(i32 %11, i64 %14, i64 %17)
  %19 = load %struct.apic_chip_data*, %struct.apic_chip_data** %4, align 8
  %20 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @vector_matrix, align 4
  %25 = call i32 @irq_matrix_remove_reserved(i32 %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.apic_chip_data*, %struct.apic_chip_data** %4, align 8
  %28 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @vector_matrix, align 4
  %33 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %34 = call i32 @irq_matrix_remove_managed(i32 %32, %struct.cpumask* %33)
  br label %35

35:                                               ; preds = %31, %26
  ret void
}

declare dso_local %struct.cpumask* @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @trace_vector_teardown(i32, i64, i64) #1

declare dso_local i32 @irq_matrix_remove_reserved(i32) #1

declare dso_local i32 @irq_matrix_remove_managed(i32, %struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
