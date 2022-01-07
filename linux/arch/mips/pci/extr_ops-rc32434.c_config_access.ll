; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-rc32434.c_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-rc32434.c_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_bus = type { i32 }

@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@rc32434_pci = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i8, i32*)* @config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i8 zeroext %3, i32* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @PCI_SLOT(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @PCI_FUNC(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i8, i8* %9, align 1
  %23 = call i32 @PCI_CFG_SET(i32 %19, i32 %20, i32 %21, i8 zeroext %22)
  %24 = call i32 (...) @rc32434_sync()
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rc32434_pci, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %40

35:                                               ; preds = %5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rc32434_pci, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = call i32 (...) @rc32434_sync()
  ret i32 0
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_CFG_SET(i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @rc32434_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
