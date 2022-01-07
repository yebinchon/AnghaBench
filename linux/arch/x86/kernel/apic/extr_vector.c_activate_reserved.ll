; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_activate_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_activate_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"irq %u: Affinity broken due to vector space exhaustion.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @activate_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_reserved(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.apic_chip_data*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %5)
  store %struct.apic_chip_data* %6, %struct.apic_chip_data** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call i32 @assign_irq_vector_any_locked(%struct.irq_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %13 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i32 @irqd_can_reserve(%struct.irq_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.apic_chip_data*, %struct.apic_chip_data** %3, align 8
  %19 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = call i32 @irq_data_get_effective_affinity_mask(%struct.irq_data* %22)
  %24 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %25 = call i32 @irq_data_get_affinity_mask(%struct.irq_data* %24)
  %26 = call i32 @cpumask_subset(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @assign_irq_vector_any_locked(%struct.irq_data*) #1

declare dso_local i32 @irqd_can_reserve(%struct.irq_data*) #1

declare dso_local i32 @cpumask_subset(i32, i32) #1

declare dso_local i32 @irq_data_get_effective_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
