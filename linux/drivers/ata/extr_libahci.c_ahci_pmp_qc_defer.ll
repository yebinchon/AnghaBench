; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_pmp_qc_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_pmp_qc_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_port* }
%struct.ata_port = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ahci_pmp_qc_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_pmp_qc_defer(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ahci_port_priv*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 0
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %10, align 8
  store %struct.ahci_port_priv* %11, %struct.ahci_port_priv** %5, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = call i32 @sata_pmp_attached(%struct.ata_port* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %1
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %22 = call i32 @ata_std_qc_defer(%struct.ata_queued_cmd* %21)
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %25 = call i32 @sata_pmp_qc_defer_cmd_switch(%struct.ata_queued_cmd* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @sata_pmp_attached(%struct.ata_port*) #1

declare dso_local i32 @ata_std_qc_defer(%struct.ata_queued_cmd*) #1

declare dso_local i32 @sata_pmp_qc_defer_cmd_switch(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
