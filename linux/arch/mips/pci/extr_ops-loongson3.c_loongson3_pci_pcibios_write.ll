; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson3.c_loongson3_pci_pcibios_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-loongson3.c_loongson3_pci_pcibios_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @loongson3_pci_pcibios_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson3_pci_pcibios_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %12, align 4
  br label %65

18:                                               ; preds = %5
  %19 = load i32, i32* @PCI_ACCESS_READ, align 4
  %20 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @loongson3_pci_config_access(i32 %19, %struct.pci_bus* %20, i32 %21, i32 %22, i32* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %72

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 3
  %36 = shl i32 %35, 3
  %37 = shl i32 255, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %33, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 3
  %43 = shl i32 %42, 3
  %44 = shl i32 %40, %43
  %45 = or i32 %39, %44
  store i32 %45, i32* %12, align 4
  br label %64

46:                                               ; preds = %29
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 3
  %53 = shl i32 %52, 3
  %54 = shl i32 65535, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %50, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 3
  %61 = shl i32 %57, %60
  %62 = or i32 %56, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %49, %46
  br label %64

64:                                               ; preds = %63, %32
  br label %65

65:                                               ; preds = %64, %16
  %66 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %67 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @loongson3_pci_config_access(i32 %66, %struct.pci_bus* %67, i32 %68, i32 %69, i32* %12)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %65, %27
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @loongson3_pci_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
