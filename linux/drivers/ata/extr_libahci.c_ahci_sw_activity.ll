; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_sw_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_sw_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i64, i32, %struct.ata_port* }
%struct.ata_port = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i32, i32 }

@ATA_LFLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ahci_sw_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_sw_activity(%struct.ata_link* %0) #0 {
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
  %19 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %20 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATA_LFLAG_SW_ACTIVITY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %31, i32 0, i32 0
  %33 = call i32 @timer_pending(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %36, i32 0, i32 0
  %38 = load i64, i64* @jiffies, align 8
  %39 = call i64 @msecs_to_jiffies(i32 10)
  %40 = add nsw i64 %38, %39
  %41 = call i32 @mod_timer(i32* %37, i64 %40)
  br label %42

42:                                               ; preds = %25, %35, %26
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
