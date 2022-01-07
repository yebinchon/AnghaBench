; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_reserve_irq_vector_locked.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_reserve_irq_vector_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i32, i32 }

@vector_matrix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @reserve_irq_vector_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reserve_irq_vector_locked(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.apic_chip_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %4)
  store %struct.apic_chip_data* %5, %struct.apic_chip_data** %3, align 8
  %6 = load i32, i32* @vector_matrix, align 4
  %7 = call i32 @irq_matrix_reserve(i32 %6)
  %8 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %9 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = call i32 @irqd_set_can_reserve(%struct.irq_data* %12)
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @trace_vector_reserve(i32 %16, i32 0)
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = call i32 @vector_assign_managed_shutdown(%struct.irq_data* %18)
  ret void
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_matrix_reserve(i32) #1

declare dso_local i32 @irqd_set_can_reserve(%struct.irq_data*) #1

declare dso_local i32 @trace_vector_reserve(i32, i32) #1

declare dso_local i32 @vector_assign_managed_shutdown(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
