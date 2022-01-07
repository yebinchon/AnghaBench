; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.apic_chip_data = type { i64, i64, i32 }

@vector_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.irq_data*)* @x86_vector_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_vector_deactivate(%struct.irq_domain* %0, %struct.irq_data* %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.apic_chip_data*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store %struct.irq_data* %1, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call %struct.apic_chip_data* @apic_chip_data(%struct.irq_data* %7)
  store %struct.apic_chip_data* %8, %struct.apic_chip_data** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %13 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %16 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @trace_vector_deactivate(i32 %11, i32 %14, i64 %17, i32 0)
  %19 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %20 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %25 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %53

29:                                               ; preds = %23, %2
  %30 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %31 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %53

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @raw_spin_lock_irqsave(i32* @vector_lock, i64 %36)
  %38 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %39 = call i32 @clear_irq_vector(%struct.irq_data* %38)
  %40 = load %struct.apic_chip_data*, %struct.apic_chip_data** %5, align 8
  %41 = getelementptr inbounds %struct.apic_chip_data, %struct.apic_chip_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %46 = call i32 @reserve_irq_vector_locked(%struct.irq_data* %45)
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %49 = call i32 @vector_assign_managed_shutdown(%struct.irq_data* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* @vector_lock, i64 %51)
  br label %53

53:                                               ; preds = %50, %34, %28
  ret void
}

declare dso_local %struct.apic_chip_data* @apic_chip_data(%struct.irq_data*) #1

declare dso_local i32 @trace_vector_deactivate(i32, i32, i64, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_irq_vector(%struct.irq_data*) #1

declare dso_local i32 @reserve_irq_vector_locked(%struct.irq_data*) #1

declare dso_local i32 @vector_assign_managed_shutdown(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
