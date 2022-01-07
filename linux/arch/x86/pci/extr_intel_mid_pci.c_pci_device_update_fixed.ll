; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_device_update_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_pci_device_update_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i64)*, i32 (i32, i32, i32, i32, i32, i32*)* }
%struct.pci_bus = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@raw_pci_ext_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32, i32)* @pci_device_update_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_device_update_fixed(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %21 = sub nsw i32 %19, %20
  %22 = ashr i32 %21, 2
  store i32 %22, i32* %17, align 4
  %23 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %24 = call i32 @pci_domain_nr(%struct.pci_bus* %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %88

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %88

33:                                               ; preds = %30
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32*)** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 8
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %42, 4
  %44 = add nsw i32 %41, %43
  %45 = call i32 %36(i32 %37, i32 %38, i32 %39, i32 %44, i32 4, i32* %14)
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %33
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = lshr i64 %52, 1
  %54 = load i64, i64* %18, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %18, align 8
  %57 = lshr i64 %56, 2
  %58 = load i64, i64* %18, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = lshr i64 %60, 4
  %62 = load i64, i64* %18, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = lshr i64 %64, 8
  %66 = load i64, i64* %18, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %18, align 8
  %69 = lshr i64 %68, 16
  %70 = load i64, i64* %18, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %18, align 8
  %74 = load i64, i64* %18, align 8
  %75 = sub i64 %74, 1
  %76 = xor i64 %75, -1
  store i64 %76, i64* %18, align 8
  br label %78

77:                                               ; preds = %33
  store i64 0, i64* %18, align 8
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (i32, i32, i32, i32, i32, i64)*, i32 (i32, i32, i32, i32, i32, i64)** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %18, align 8
  %87 = call i32 %81(i32 %82, i32 %83, i32 %84, i32 %85, i32 4, i64 %86)
  store i32 %87, i32* %7, align 4
  br label %100

88:                                               ; preds = %30, %6
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @raw_pci_ext_ops, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (i32, i32, i32, i32, i32, i64)*, i32 (i32, i32, i32, i32, i32, i64)** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 %91(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i64 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %88, %78
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
