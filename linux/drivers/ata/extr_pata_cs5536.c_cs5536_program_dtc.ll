; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_program_dtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_cs5536.c_cs5536_program_dtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@IDE_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_D0_SHIFT = common dso_local global i32 0, align 4
@DTC = common dso_local global i32 0, align 4
@IDE_DRV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*, i32)* @cs5536_program_dtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_program_dtc(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IDE_D1_SHIFT, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IDE_D0_SHIFT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* @DTC, align 4
  %30 = call i32 @cs5536_read(%struct.pci_dev* %28, i32 %29, i32* %7)
  %31 = load i32, i32* @IDE_DRV_MASK, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i32, i32* @DTC, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @cs5536_write(%struct.pci_dev* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
