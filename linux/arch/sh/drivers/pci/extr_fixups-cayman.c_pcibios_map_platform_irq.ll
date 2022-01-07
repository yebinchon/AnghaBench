; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-cayman.c_pcibios_map_platform_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-cayman.c_pcibios_map_platform_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.pci_dev* }
%struct.slot_pin = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"PCI path to root bus too long!\0A\00", align 1
@IRQ_INTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"PCI expansion bus device found - not handled!\0A\00", align 1
@IRQ_P2INTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_platform_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.slot_pin], align 16
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %45, %3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %10
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @PCI_SLOT(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  store i32 %22, i32* %5, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_swizzle_interrupt_pin(%struct.pci_dev* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  store i32 %29, i32* %6, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  store %struct.pci_dev* %38, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %17
  br label %10

46:                                               ; preds = %10
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @PCI_SLOT(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54, %46
  %58 = load i32, i32* @IRQ_INTA, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @pci_swizzle_interrupt_pin(%struct.pci_dev* %59, i32 %60)
  %62 = add nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %104

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %103

81:                                               ; preds = %64
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x %struct.slot_pin], [4 x %struct.slot_pin]* %8, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.slot_pin, %struct.slot_pin* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @IRQ_P2INTA, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 1
  %100 = add nsw i32 %97, %99
  store i32 %100, i32* %7, align 4
  br label %102

101:                                              ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %84
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %57
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i8* @PCI_SLOT(i32) #1

declare dso_local i32 @pci_swizzle_interrupt_pin(%struct.pci_dev*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
