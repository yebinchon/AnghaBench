; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_cy82c693.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_bios32.c_pci_fixup_cy82c693.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@PCI_CLASS_STORAGE_IDE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_fixup_cy82c693 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_fixup_cy82c693(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = ashr i32 %7, 8
  %9 = load i32, i32* @PCI_CLASS_STORAGE_IDE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 496, i32* %3, align 4
  store i32 1012, i32* %4, align 4
  br label %19

18:                                               ; preds = %11
  store i32 368, i32* %3, align 4
  store i32 884, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @pci_write_config_dword(%struct.pci_dev* %20, i32 %21, i32 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pci_write_config_dword(%struct.pci_dev* %26, i32 %27, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %80

62:                                               ; preds = %1
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @PCI_FUNC(i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = call i32 @pci_write_config_byte(%struct.pci_dev* %69, i32 75, i32 14)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = call i32 @pci_write_config_byte(%struct.pci_dev* %71, i32 76, i32 15)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i32 @pci_write_config_byte(%struct.pci_dev* %73, i32 77, i32 65)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 68, i32 23)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = call i32 @pci_write_config_byte(%struct.pci_dev* %77, i32 69, i32 3)
  br label %79

79:                                               ; preds = %68, %62
  br label %80

80:                                               ; preds = %79, %19
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
