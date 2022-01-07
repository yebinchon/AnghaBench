; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/pci/extr_pci-adm8668.c_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm8668/files-3.18/arch/mips/pci/extr_pci-adm8668.c_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@pci_lock = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @pci_lock, i64 %14)
  %16 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @mkaddr(%struct.pci_bus* %16, i32 %17, i32 %18)
  %20 = call i32 @write_cfgaddr(i32 %19)
  %21 = call i32 (...) @read_cfgdata()
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %55 [
    i32 1, label %23
    i32 2, label %38
    i32 4, label %53
  ]

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 3
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = shl i32 255, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 255
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %55

38:                                               ; preds = %5
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 2
  %41 = shl i32 %40, 4
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 65535, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 65535
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %55

53:                                               ; preds = %5
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %5, %53, %38, %23
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @write_cfgdata(i32 %56)
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @pci_lock, i64 %58)
  %60 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_cfgaddr(i32) #1

declare dso_local i32 @mkaddr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @read_cfgdata(...) #1

declare dso_local i32 @write_cfgdata(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
