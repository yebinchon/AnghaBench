; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_serverworks.c_serverworks_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_serverworks.c_serverworks_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv_cable_table = type { i64, i64, i32 (%struct.ata_port.0*)* }
%struct.ata_port.0 = type opaque
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64, i64 }

@cable_detect = common dso_local global %struct.sv_cable_table* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @serverworks_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverworks_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.sv_cable_table*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.sv_cable_table*, %struct.sv_cable_table** @cable_detect, align 8
  store %struct.sv_cable_table* %12, %struct.sv_cable_table** %5, align 8
  br label %13

13:                                               ; preds = %47, %1
  %14 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %15 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %20 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %18
  %27 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %28 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %36 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI_ANY_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %26
  %41 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %42 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %41, i32 0, i32 2
  %43 = load i32 (%struct.ata_port.0*)*, i32 (%struct.ata_port.0*)** %42, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = bitcast %struct.ata_port* %44 to %struct.ata_port.0*
  %46 = call i32 %43(%struct.ata_port.0* %45)
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %34, %18
  %48 = load %struct.sv_cable_table*, %struct.sv_cable_table** %5, align 8
  %49 = getelementptr inbounds %struct.sv_cable_table, %struct.sv_cable_table* %48, i32 1
  store %struct.sv_cable_table* %49, %struct.sv_cable_table** %5, align 8
  br label %13

50:                                               ; preds = %13
  %51 = call i32 (...) @BUG()
  store i32 -1, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %40
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
