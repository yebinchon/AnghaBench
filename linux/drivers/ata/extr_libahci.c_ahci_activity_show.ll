; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_activity_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_activity_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.ata_link* }
%struct.ata_link = type { i64, %struct.ata_port* }
%struct.ata_port = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*)* @ahci_activity_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_activity_show(%struct.ata_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ahci_port_priv*, align 8
  %8 = alloca %struct.ahci_em_priv*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load %struct.ata_link*, %struct.ata_link** %10, align 8
  store %struct.ata_link* %11, %struct.ata_link** %5, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 1
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %6, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %16, align 8
  store %struct.ahci_port_priv* %17, %struct.ahci_port_priv** %7, align 8
  %18 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %7, align 8
  %19 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %18, i32 0, i32 0
  %20 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %19, align 8
  %21 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %20, i64 %23
  store %struct.ahci_em_priv* %24, %struct.ahci_em_priv** %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret i32 %29
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
