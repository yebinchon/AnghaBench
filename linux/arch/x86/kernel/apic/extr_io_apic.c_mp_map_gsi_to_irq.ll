; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_map_gsi_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_map_gsi_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_alloc_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@mp_INT = common dso_local global i32 0, align 4
@IOAPIC_MAP_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_map_gsi_to_irq(i32 %0, i32 %1, %struct.irq_alloc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_alloc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.irq_alloc_info* %2, %struct.irq_alloc_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mp_find_ioapic(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mp_find_ioapic_pin(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @mp_INT, align 4
  %25 = call i32 @find_irq_entry(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IOAPIC_MAP_CHECK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %7, align 8
  %43 = call i32 @mp_map_pin_to_irq(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.irq_alloc_info* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %33, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mp_find_ioapic(i32) #1

declare dso_local i32 @mp_find_ioapic_pin(i32, i32) #1

declare dso_local i32 @find_irq_entry(i32, i32, i32) #1

declare dso_local i32 @mp_map_pin_to_irq(i32, i32, i32, i32, i32, %struct.irq_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
