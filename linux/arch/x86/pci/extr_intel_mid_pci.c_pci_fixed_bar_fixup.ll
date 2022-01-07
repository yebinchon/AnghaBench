; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_fixed_bar_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_fixed_bar_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@pci_soc_mode = common dso_local global i32 0, align 4
@PCIE_CAP_OFFSET = common dso_local global i64 0, align 8
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixed_bar_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixed_bar_fixup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load i32, i32* @pci_soc_mode, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %85

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCIE_CAP_OFFSET, align 8
  %14 = add nsw i64 %13, 4
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %85

17:                                               ; preds = %9
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @fixed_bar_cap(i32 %20, i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = call i64 @PCI_DEVFN(i32 2, i32 0)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = call i64 @PCI_DEVFN(i32 2, i32 2)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %17
  br label %85

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %48, %51
  %53 = call i32 @pci_read_config_dword(%struct.pci_dev* %46, i64 %52, i64* %4)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 %64, i64* %71, align 8
  %72 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %72
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %45
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %41

85:                                               ; preds = %8, %16, %39, %41
  ret void
}

declare dso_local i64 @fixed_bar_cap(i32, i64) #1

declare dso_local i64 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
