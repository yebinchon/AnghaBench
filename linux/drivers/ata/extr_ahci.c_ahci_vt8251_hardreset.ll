; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_vt8251_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_vt8251_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EXIT, rc=%d, class=%u\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @ahci_vt8251_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_vt8251_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ahci_host_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 1
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %7, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %17, align 8
  store %struct.ahci_host_priv* %18, %struct.ahci_host_priv** %8, align 8
  %19 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %20, i32 0, i32 1
  %22 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %21, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %24 = call i32 %22(%struct.ata_port* %23)
  %25 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %26 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %27 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %26, i32 0, i32 0
  %28 = call i32 @sata_ehc_deb_timing(i32* %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @sata_link_hardreset(%struct.ata_link* %25, i32 %28, i64 %29, i32* %9, i32* null)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  %32 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %31, i32 0, i32 0
  %33 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %32, align 8
  %34 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %35 = call i32 %33(%struct.ata_port* %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  br label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %44, %42 ], [ %46, %45 ]
  ret i32 %48
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i32, i64, i32*, i32*) #1

declare dso_local i32 @sata_ehc_deb_timing(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
