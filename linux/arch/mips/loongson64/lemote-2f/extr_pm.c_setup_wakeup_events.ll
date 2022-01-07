; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_pm.c_setup_wakeup_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_pm.c_setup_wakeup_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_machtype = common dso_local global i32 0, align 4
@I8042_KBD_IRQ = common dso_local global i32 0, align 4
@PIC_MASTER_IMR = common dso_local global i32 0, align 4
@PIC_CASCADE_IR = common dso_local global i32 0, align 4
@SCI_IRQ_NUM = common dso_local global i32 0, align 4
@PIC_SLAVE_IMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_wakeup_events() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mips_machtype, align 4
  switch i32 %2, label %31 [
    i32 129, label %3
    i32 128, label %3
  ]

3:                                                ; preds = %0, %0
  %4 = load i32, i32* @I8042_KBD_IRQ, align 4
  %5 = shl i32 1, %4
  %6 = xor i32 %5, -1
  %7 = and i32 255, %6
  %8 = load i32, i32* @PIC_MASTER_IMR, align 4
  %9 = call i32 @outb(i32 %7, i32 %8)
  %10 = load i32, i32* @PIC_MASTER_IMR, align 4
  %11 = call i32 @inb(i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @i8042_enable_kbd_port()
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @PIC_CASCADE_IR, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = load i32, i32* @PIC_MASTER_IMR, align 4
  %19 = call i32 @outb(i32 %17, i32 %18)
  %20 = load i32, i32* @PIC_MASTER_IMR, align 4
  %21 = call i32 @inb(i32 %20)
  %22 = load i32, i32* @SCI_IRQ_NUM, align 4
  %23 = sub nsw i32 %22, 8
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = and i32 255, %25
  %27 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %28 = call i32 @outb(i32 %26, i32 %27)
  %29 = load i32, i32* @PIC_SLAVE_IMR, align 4
  %30 = call i32 @inb(i32 %29)
  br label %32

31:                                               ; preds = %0
  br label %32

32:                                               ; preds = %31, %3
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @i8042_enable_kbd_port(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
