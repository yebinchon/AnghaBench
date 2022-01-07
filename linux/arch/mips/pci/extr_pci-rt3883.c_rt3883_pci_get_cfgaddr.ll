; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_get_cfgaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_get_cfgaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rt3883_pci_get_cfgaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3883_pci_get_cfgaddr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 16
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 11
  %13 = or i32 %10, %12
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %13, %15
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 252
  %19 = or i32 %16, %18
  %20 = or i32 %19, -2147483648
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
