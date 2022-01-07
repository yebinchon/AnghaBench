; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_usb.c_alchemy_usb_pm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_usb.c_alchemy_usb_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU1000_USB_OHCI_PHYS_ADDR = common dso_local global i32 0, align 4
@AU1000_OHCICFG = common dso_local global i32 0, align 4
@AU1550_USB_OHCI_PHYS_ADDR = common dso_local global i32 0, align 4
@AU1550_OHCICFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @alchemy_usb_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alchemy_usb_pm(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @alchemy_get_cputype()
  switch i32 %3, label %20 [
    i32 133, label %4
    i32 129, label %4
    i32 132, label %4
    i32 128, label %9
    i32 131, label %14
    i32 130, label %17
  ]

4:                                                ; preds = %1, %1, %1
  %5 = load i32, i32* @AU1000_USB_OHCI_PHYS_ADDR, align 4
  %6 = load i32, i32* @AU1000_OHCICFG, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @au1000_usb_pm(i32 %5, i32 %6, i32 %7)
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @AU1550_USB_OHCI_PHYS_ADDR, align 4
  %11 = load i32, i32* @AU1550_OHCICFG, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @au1000_usb_pm(i32 %10, i32 %11, i32 %12)
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @au1200_usb_pm(i32 %15)
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @au1300_usb_pm(i32 %18)
  br label %20

20:                                               ; preds = %1, %17, %14, %9, %4
  ret void
}

declare dso_local i32 @alchemy_get_cputype(...) #1

declare dso_local i32 @au1000_usb_pm(i32, i32, i32) #1

declare dso_local i32 @au1200_usb_pm(i32) #1

declare dso_local i32 @au1300_usb_pm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
