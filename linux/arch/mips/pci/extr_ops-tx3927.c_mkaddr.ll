; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-tx3927.c_mkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-tx3927.c_mkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pci_bus = type { i32, i32* }

@TX3927_PCIC_MAX_DEVNU = common dso_local global i32 0, align 4
@tx3927_pcicptr = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i8, i8)* @mkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkaddr(%struct.pci_bus* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = load i32, i32* @TX3927_PCIC_MAX_DEVNU, align 4
  %16 = call zeroext i8 @PCI_DEVFN(i32 %15, i32 0)
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %55

20:                                               ; preds = %12, %3
  %21 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 16
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 8
  %30 = or i32 %25, %29
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 252
  %34 = or i32 %30, %33
  %35 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %36 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = or i32 %34, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %20, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local zeroext i8 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
