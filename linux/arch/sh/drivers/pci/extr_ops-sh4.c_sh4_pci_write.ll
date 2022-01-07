; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh4.c_sh4_pci_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh4.c_sh4_pci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_channel* }
%struct.pci_channel = type { i32 }

@pci_config_lock = common dso_local global i32 0, align 4
@SH4_PCIPAR = common dso_local global i32 0, align 4
@SH4_PCIPDR = common dso_local global i32 0, align 4
@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @sh4_pci_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh4_pci_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_channel*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load %struct.pci_channel*, %struct.pci_channel** %17, align 8
  store %struct.pci_channel* %18, %struct.pci_channel** %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %19)
  %21 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @CONFIG_CMD(%struct.pci_bus* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @SH4_PCIPAR, align 4
  %27 = call i32 @pci_write_reg(%struct.pci_channel* %21, i32 %25, i32 %26)
  %28 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %29 = load i32, i32* @SH4_PCIPDR, align 4
  %30 = call i32 @pci_read_reg(%struct.pci_channel* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %31)
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %66 [
    i32 1, label %34
    i32 2, label %49
    i32 4, label %64
  ]

34:                                               ; preds = %5
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 3
  %37 = shl i32 %36, 3
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = shl i32 255, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 255
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %68

49:                                               ; preds = %5
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 2
  %52 = shl i32 %51, 3
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 65535, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %15, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 65535
  %60 = load i32, i32* %14, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  br label %68

64:                                               ; preds = %5
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %15, align 4
  br label %68

66:                                               ; preds = %5
  %67 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %67, i32* %6, align 4
  br label %74

68:                                               ; preds = %64, %49, %34
  %69 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @SH4_PCIPDR, align 4
  %72 = call i32 @pci_write_reg(%struct.pci_channel* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %66
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i32, i32) #1

declare dso_local i32 @CONFIG_CMD(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
