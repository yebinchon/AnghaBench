; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_set_pci_configuration_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-emma2rh.c_set_pci_configuration_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMMA2RH_PCI_INT = common dso_local global i32 0, align 4
@RMABORT = common dso_local global i32 0, align 4
@EMMA2RH_PCI_IWIN0_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, i32)* @set_pci_configuration_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pci_configuration_address(i8 zeroext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EMMA2RH_PCI_INT, align 4
  %9 = load i32, i32* @RMABORT, align 4
  %10 = xor i32 %9, -1
  %11 = call i32 @emma2rh_out32(i32 %8, i32 %10)
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PCI_SLOT(i32 %16)
  %18 = add nsw i32 22, %17
  %19 = shl i32 1, %18
  %20 = or i32 %19, 2560
  store i32 %20, i32* %7, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 26
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PCI_SLOT(i32 %25)
  %27 = shl i32 %26, 22
  %28 = or i32 %24, %27
  %29 = or i32 %28, 32768
  %30 = or i32 %29, 2560
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %21, %15
  %32 = load i32, i32* @EMMA2RH_PCI_IWIN0_CTR, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @emma2rh_out32(i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @emma2rh_out32(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
