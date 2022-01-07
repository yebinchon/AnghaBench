; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_ack_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_ioapic_ack_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_cfg = type { i32 }

@APIC_TMR = common dso_local global i64 0, align 8
@irq_mis_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ioapic_ack_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_ack_level(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_cfg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %7)
  store %struct.irq_cfg* %8, %struct.irq_cfg** %3, align 8
  %9 = load %struct.irq_cfg*, %struct.irq_cfg** %3, align 8
  %10 = call i32 @irq_complete_move(%struct.irq_cfg* %9)
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call i32 @ioapic_irqd_mask(%struct.irq_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.irq_cfg*, %struct.irq_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* @APIC_TMR, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, -32
  %19 = ashr i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = call i64 @apic_read(i64 %21)
  store i64 %22, i64* %4, align 8
  %23 = call i32 (...) @ack_APIC_irq()
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 31
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  %29 = and i64 %24, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %1
  %32 = call i32 @atomic_inc(i32* @irq_mis_count)
  %33 = load %struct.irq_cfg*, %struct.irq_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eoi_ioapic_pin(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ioapic_irqd_unmask(%struct.irq_data* %41, i32 %42)
  ret void
}

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

declare dso_local i32 @irq_complete_move(%struct.irq_cfg*) #1

declare dso_local i32 @ioapic_irqd_mask(%struct.irq_data*) #1

declare dso_local i64 @apic_read(i64) #1

declare dso_local i32 @ack_APIC_irq(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @eoi_ioapic_pin(i32, i32) #1

declare dso_local i32 @ioapic_irqd_unmask(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
