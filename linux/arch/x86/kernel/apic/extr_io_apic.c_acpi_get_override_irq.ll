; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_acpi_get_override_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_acpi_get_override_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_ioapic_setup = common dso_local global i64 0, align 8
@mp_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_override_irq(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* @skip_ioapic_setup, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mp_find_ioapic(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %42

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mp_find_ioapic_pin(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @mp_INT, align 4
  %31 = call i32 @find_irq_entry(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @irq_trigger(i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @irq_polarity(i32 %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %34, %26, %19, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @mp_find_ioapic(i32) #1

declare dso_local i32 @mp_find_ioapic_pin(i32, i32) #1

declare dso_local i32 @find_irq_entry(i32, i32, i32) #1

declare dso_local i32 @irq_trigger(i32) #1

declare dso_local i32 @irq_polarity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
