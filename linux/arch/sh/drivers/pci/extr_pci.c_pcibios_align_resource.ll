; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_pci.c_pcibios_align_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_pci.c_pcibios_align_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }
%struct.pci_dev = type { %struct.pci_channel* }
%struct.pci_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCIBIOS_MIN_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_align_resource(i8* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_channel*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.pci_dev*
  store %struct.pci_dev* %13, %struct.pci_dev** %9, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.pci_channel*, %struct.pci_channel** %15, align 8
  store %struct.pci_channel* %16, %struct.pci_channel** %10, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IORESOURCE_IO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PCIBIOS_MIN_IO, align 4
  %29 = load %struct.pci_channel*, %struct.pci_channel** %10, align 8
  %30 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %28, %34
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load i32, i32* @PCIBIOS_MIN_IO, align 4
  %39 = load %struct.pci_channel*, %struct.pci_channel** %10, align 8
  %40 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %38, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %37, %26
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, 768
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1023
  %53 = and i32 %52, -1024
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
