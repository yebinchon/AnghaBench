; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_fixed_bar_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_fixed_bar_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32, i32, i32, i32, i32*)* }
%struct.pci_bus = type { i32 }

@PCIE_CAP_OFFSET = common dso_local global i32 0, align 4
@raw_pci_ext_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_EXT_CAP_ID_VNDR = common dso_local global i32 0, align 4
@PCIE_VNDR_CAP_ID_FIXED_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @fixed_bar_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_bar_cap(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @PCIE_CAP_OFFSET, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (i32, i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32, i32*)** %19, align 8
  %21 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %22 = call i32 @pci_domain_nr(%struct.pci_bus* %21)
  %23 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 %20(i32 %22, i32 %25, i32 %26, i32 %27, i32 4, i32* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %69

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @PCI_EXT_CAP_ID(i32 %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @PCI_EXT_CAP_ID(i32 %36)
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  br label %68

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PCI_EXT_CAP_ID(i32 %41)
  %43 = load i32, i32* @PCI_EXT_CAP_ID_VNDR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64 (i32, i32, i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32, i32, i32*)** %47, align 8
  %49 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %50 = call i32 @pci_domain_nr(%struct.pci_bus* %49)
  %51 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %52 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 4
  %57 = call i64 %48(i32 %50, i32 %53, i32 %54, i32 %56, i32 4, i32* %8)
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 65535
  %60 = load i32, i32* @PCIE_VNDR_CAP_ID_FIXED_BAR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @PCI_EXT_CAP_NEXT(i32 %66)
  store i32 %67, i32* %6, align 4
  br label %14

68:                                               ; preds = %39, %14
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62, %30, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_EXT_CAP_ID(i32) #1

declare dso_local i32 @PCI_EXT_CAP_NEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
