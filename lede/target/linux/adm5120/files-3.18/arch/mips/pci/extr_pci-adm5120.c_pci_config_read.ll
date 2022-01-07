; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/pci/extr_pci-adm5120.c_pci_config_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/pci/extr_pci-adm5120.c_pci_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@pci_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"PCI: cfg_read  %02u.%02u.%01u/%02X:%01d, cfg:0x%08X\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c", 0x%08X returned\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_config_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @pci_lock, i64 %13)
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mkaddr(%struct.pci_bus* %15, i32 %16, i32 %17)
  %19 = call i32 @write_cfgaddr(i32 %18)
  %20 = call i32 (...) @read_cfgdata()
  store i32 %20, i32* %12, align 4
  %21 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PCI_FUNC(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %60 [
    i32 1, label %33
    i32 2, label %50
  ]

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 255
  store i32 %49, i32* %12, align 4
  br label %60

50:                                               ; preds = %5
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 65535
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %5, %57, %47
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* @pci_lock, i64 %65)
  %67 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_cfgaddr(i32) #1

declare dso_local i32 @mkaddr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @read_cfgdata(...) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
