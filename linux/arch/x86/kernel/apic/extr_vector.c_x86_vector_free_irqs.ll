; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_x86_vector_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.apic_chip_data = type { i32 }
%struct.irq_data = type { %struct.apic_chip_data* }

@x86_vector_domain = common dso_local global i32 0, align 4
@vector_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @x86_vector_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_vector_free_irqs(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.apic_chip_data*, align 8
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %45, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i32, i32* @x86_vector_domain, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add i32 %17, %18
  %20 = call %struct.irq_data* @irq_domain_get_irq_data(i32 %16, i32 %19)
  store %struct.irq_data* %20, %struct.irq_data** %8, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %22 = icmp ne %struct.irq_data* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load %struct.apic_chip_data*, %struct.apic_chip_data** %25, align 8
  %27 = icmp ne %struct.apic_chip_data* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @raw_spin_lock_irqsave(i32* @vector_lock, i64 %29)
  %31 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %32 = call i32 @clear_irq_vector(%struct.irq_data* %31)
  %33 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %34 = call i32 @vector_free_reserved_and_managed(%struct.irq_data* %33)
  %35 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load %struct.apic_chip_data*, %struct.apic_chip_data** %36, align 8
  store %struct.apic_chip_data* %37, %struct.apic_chip_data** %7, align 8
  %38 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %39 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %38)
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @raw_spin_unlock_irqrestore(i32* @vector_lock, i64 %40)
  %42 = load %struct.apic_chip_data*, %struct.apic_chip_data** %7, align 8
  %43 = call i32 @free_apic_chip_data(%struct.apic_chip_data* %42)
  br label %44

44:                                               ; preds = %28, %23, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %11

48:                                               ; preds = %11
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_irq_vector(%struct.irq_data*) #1

declare dso_local i32 @vector_free_reserved_and_managed(%struct.irq_data*) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_apic_chip_data(%struct.apic_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
