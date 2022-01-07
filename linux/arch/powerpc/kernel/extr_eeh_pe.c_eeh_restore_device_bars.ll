; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_restore_device_bars.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_restore_device_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32*)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i32* }

@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeh_dev*)* @eeh_restore_device_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_restore_device_bars(%struct.eeh_dev* %0) #0 {
  %2 = alloca %struct.eeh_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.eeh_dev* %0, %struct.eeh_dev** %2, align 8
  %6 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %7 = call %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev* %6)
  store %struct.pci_dn* %7, %struct.pci_dn** %3, align 8
  store i32 4, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %13, align 8
  %15 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 %16, 4
  %18 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %19 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %14(%struct.pci_dn* %15, i32 %17, i32 4, i32 %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %31, align 8
  %33 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %35 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %32(%struct.pci_dn* %33, i32 48, i32 4, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %41, align 8
  %43 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %44 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %45 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %46 = call i32 @SAVED_BYTE(i32 %45)
  %47 = call i32 %42(%struct.pci_dn* %43, i32 %44, i32 1, i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %49, align 8
  %51 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %52 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %53 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %54 = call i32 @SAVED_BYTE(i32 %53)
  %55 = call i32 %50(%struct.pci_dn* %51, i32 %52, i32 1, i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %57, align 8
  %59 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %60 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %61 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 15
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %58(%struct.pci_dn* %59, i32 60, i32 4, i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (%struct.pci_dn*, i32, i32, i32*)*, i32 (%struct.pci_dn*, i32, i32, i32*)** %67, align 8
  %69 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %70 = load i32, i32* @PCI_COMMAND, align 4
  %71 = call i32 %68(%struct.pci_dn* %69, i32 %70, i32 4, i32* %5)
  %72 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %73 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %29
  %81 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %29
  %85 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %91 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %107

102:                                              ; preds = %89
  %103 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %102, %98
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.pci_dn*, i32, i32, i32)*, i32 (%struct.pci_dn*, i32, i32, i32)** %109, align 8
  %111 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %112 = load i32, i32* @PCI_COMMAND, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 %110(%struct.pci_dn* %111, i32 %112, i32 4, i32 %113)
  ret void
}

declare dso_local %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev*) #1

declare dso_local i32 @SAVED_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
