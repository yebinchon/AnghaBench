; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_pci_parse_of_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_pci_parse_of_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_PCI_ADDR0_SPACE_MASK = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_SPACE_MMIO32 = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_SPACE_MMIO64 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_ALIAS = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_1M = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_PREFETCH = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_BARREG = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@OF_PCI_ADDR0_SPACE_IO = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_parse_of_flags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @OF_PCI_ADDR0_SPACE_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OF_PCI_ADDR0_SPACE_MMIO32, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @OF_PCI_ADDR0_SPACE_MMIO64, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OF_PCI_ADDR0_SPACE_MMIO64, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %26 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @OF_PCI_ADDR0_ALIAS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_1M, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @OF_PCI_ADDR0_PREFETCH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %46 = load i32, i32* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @OF_PCI_ADDR0_BARREG, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @IORESOURCE_READONLY, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %53, %50
  br label %73

64:                                               ; preds = %13
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @OF_PCI_ADDR0_SPACE_IO, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @IORESOURCE_IO, align 4
  %70 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
