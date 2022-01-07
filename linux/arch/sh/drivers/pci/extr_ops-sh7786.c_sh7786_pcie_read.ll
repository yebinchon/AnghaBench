; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"pcie-config-read: bus=%3d devfn=0x%04x where=0x%04x size=%d val=0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @sh7786_pcie_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7786_pcie_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %22, i32* %6, align 4
  br label %89

23:                                               ; preds = %17, %5
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %31, i32* %6, align 4
  br label %89

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %34)
  %36 = load i32, i32* @PCI_ACCESS_READ, align 4
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sh7786_pcie_config_access(i32 %36, %struct.pci_bus* %37, i32 %38, i32 %39, i32* %14)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32*, i32** %11, align 8
  store i32 -1, i32* %45, align 4
  br label %85

46:                                               ; preds = %33
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 3
  %54 = ashr i32 %50, %53
  %55 = and i32 %54, 255
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %72

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 2
  %64 = shl i32 %63, 3
  %65 = ashr i32 %61, %64
  %66 = and i32 %65, 65535
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %74 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %73, i32 0, i32 1
  %75 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %76 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @dev_dbg(i32* %74, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %72, %44
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %30, %21
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh7786_pcie_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
