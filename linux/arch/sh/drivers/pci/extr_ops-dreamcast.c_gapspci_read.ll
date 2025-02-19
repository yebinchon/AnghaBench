; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-dreamcast.c_gapspci_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_ops-dreamcast.c_gapspci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@GAPSPCI_BBA_CONFIG = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @gapspci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gapspci_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %11, align 8
  store i32 -1, i32* %12, align 4
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @gapspci_config_access(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %43

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %41 [
    i32 1, label %23
    i32 2, label %29
    i32 4, label %35
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @GAPSPCI_BBA_CONFIG, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @inb(i32 %26)
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load i32, i32* @GAPSPCI_BBA_CONFIG, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @inw(i32 %32)
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @GAPSPCI_BBA_CONFIG, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @inl(i32 %38)
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %21, %35, %29, %23
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %19
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @gapspci_config_access(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
