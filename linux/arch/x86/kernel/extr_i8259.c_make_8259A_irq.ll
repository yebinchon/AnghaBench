; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8259.c_make_8259A_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_i8259.c_make_8259A_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_apic_irqs = common dso_local global i32 0, align 4
@i8259A_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @make_8259A_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_8259A_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @disable_irq_nosync(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 1, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @io_apic_irqs, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* @io_apic_irqs, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @handle_level_irq, align 4
  %12 = call i32 @irq_set_chip_and_handler(i32 %10, i32* @i8259A_chip, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @enable_irq(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @lapic_assign_legacy_vector(i32 %15, i32 1)
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @lapic_assign_legacy_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
