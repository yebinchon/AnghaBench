; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_deinit_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_deinit_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 (%struct.ata_port*)* }

@.str = private unnamed_addr constant [22 x i8] c"failed to stop engine\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed stop FIS RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i8**)* @ahci_deinit_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_deinit_port(%struct.ata_port* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahci_host_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %11, align 8
  store %struct.ahci_host_priv* %12, %struct.ahci_host_priv** %7, align 8
  %13 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %13, i32 0, i32 0
  %15 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %14, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %17 = call i32 %15(%struct.ata_port* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = call i32 @ahci_stop_fis_rx(%struct.ata_port* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ahci_stop_fis_rx(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
