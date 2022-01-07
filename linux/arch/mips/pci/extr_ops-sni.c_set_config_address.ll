; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-sni.c_set_config_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-sni.c_set_config_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIMT_CONFIG_ADDRESS = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @set_config_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config_address(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ugt i32 %8, 255
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 255
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %14, i32* %4, align 4
  br label %38

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @PCI_DEVFN(i32 8, i32 0)
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 252
  %34 = or i32 %31, %33
  %35 = load i64, i64* @PCIMT_CONFIG_ADDRESS, align 8
  %36 = inttoptr i64 %35 to i32*
  store volatile i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %24, %22, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
