; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahci_error_handler(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ahci_host_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  store %struct.ahci_host_priv* %8, %struct.ahci_host_priv** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %17, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %20 = call i32 %18(%struct.ata_port* %19)
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %21, i32 0, i32 1
  %23 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %22, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %25 = call i32 %23(%struct.ata_port* %24)
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %28 = call i32 @sata_pmp_error_handler(%struct.ata_port* %27)
  %29 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ata_dev_enabled(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %36, i32 0, i32 0
  %38 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %37, align 8
  %39 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %40 = call i32 %38(%struct.ata_port* %39)
  br label %41

41:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32 @sata_pmp_error_handler(%struct.ata_port*) #1

declare dso_local i32 @ata_dev_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
