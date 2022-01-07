; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_usb.c_alchemy_usb_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_usb.c_alchemy_usb_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alchemy_usb_lock = common dso_local global i32 0, align 4
@AU1000_USB_OHCI_PHYS_ADDR = common dso_local global i32 0, align 4
@AU1000_OHCICFG = common dso_local global i32 0, align 4
@AU1550_USB_OHCI_PHYS_ADDR = common dso_local global i32 0, align 4
@AU1550_OHCICFG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alchemy_usb_control(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @alchemy_usb_lock, i64 %7)
  %9 = call i32 (...) @alchemy_get_cputype()
  switch i32 %9, label %30 [
    i32 133, label %10
    i32 129, label %10
    i32 132, label %10
    i32 128, label %16
    i32 131, label %22
    i32 130, label %26
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AU1000_USB_OHCI_PHYS_ADDR, align 4
  %14 = load i32, i32* @AU1000_OHCICFG, align 4
  %15 = call i32 @au1000_usb_control(i32 %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AU1550_USB_OHCI_PHYS_ADDR, align 4
  %20 = load i32, i32* @AU1550_OHCICFG, align 4
  %21 = call i32 @au1000_usb_control(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @au1200_usb_control(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @au1300_usb_control(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26, %22, %16, %10
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @alchemy_usb_lock, i64 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @alchemy_get_cputype(...) #1

declare dso_local i32 @au1000_usb_control(i32, i32, i32, i32) #1

declare dso_local i32 @au1200_usb_control(i32, i32) #1

declare dso_local i32 @au1300_usb_control(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
