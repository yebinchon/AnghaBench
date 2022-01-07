; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_init_sw_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_init_sw_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i64, i32, %struct.ata_port* }
%struct.ata_port = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i64, i32, %struct.ata_link*, i64, i64 }

@ahci_sw_activity_blink = common dso_local global i32 0, align 4
@ATA_LFLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ahci_init_sw_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_init_sw_activity(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ahci_port_priv*, align 8
  %5 = alloca %struct.ahci_em_priv*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %7 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %6, i32 0, i32 2
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %10, align 8
  store %struct.ahci_port_priv* %11, %struct.ahci_port_priv** %4, align 8
  %12 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %12, i32 0, i32 0
  %14 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %13, align 8
  %15 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %14, i64 %17
  store %struct.ahci_em_priv* %18, %struct.ahci_em_priv** %5, align 8
  %19 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %24 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %24, i32 0, i32 2
  store %struct.ata_link* %23, %struct.ata_link** %25, align 8
  %26 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %26, i32 0, i32 1
  %28 = load i32, i32* @ahci_sw_activity_blink, align 4
  %29 = call i32 @timer_setup(i32* %27, i32 %28, i32 0)
  %30 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @ATA_LFLAG_SW_ACTIVITY, align 4
  %36 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %37 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
