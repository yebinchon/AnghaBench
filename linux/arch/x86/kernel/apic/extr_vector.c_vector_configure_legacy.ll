; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_vector_configure_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_vector_configure_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i32, i64, i32 }

@vector_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irq_data*, %struct.apic_chip_data*)* @vector_configure_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_configure_legacy(i32 %0, %struct.irq_data* %1, %struct.apic_chip_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.apic_chip_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store %struct.apic_chip_data* %2, %struct.apic_chip_data** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ISA_IRQ_VECTOR(i32 %9)
  %11 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %12 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %14 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* @vector_lock, i64 %15)
  %17 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %18 = call i64 @irqd_is_activated(%struct.irq_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @trace_vector_setup(i32 %21, i32 1, i32 0)
  %23 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %24 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %25 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %28 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @apic_update_irq_cfg(%struct.irq_data* %23, i32 %26, i64 %29)
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.apic_chip_data*, %struct.apic_chip_data** %6, align 8
  %33 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %35 = call i32 @irqd_set_can_reserve(%struct.irq_data* %34)
  %36 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %37 = call i32 @clear_irq_vector(%struct.irq_data* %36)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* @vector_lock, i64 %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @ISA_IRQ_VECTOR(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @irqd_is_activated(%struct.irq_data*) #1

declare dso_local i32 @trace_vector_setup(i32, i32, i32) #1

declare dso_local i32 @apic_update_irq_cfg(%struct.irq_data*, i32, i64) #1

declare dso_local i32 @irqd_set_can_reserve(%struct.irq_data*) #1

declare dso_local i32 @clear_irq_vector(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
