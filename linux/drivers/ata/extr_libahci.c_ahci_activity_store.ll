; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_activity_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_activity_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.ata_link* }
%struct.ata_link = type { i64, i32, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__*, %struct.ahci_port_priv* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32, i32)* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i32, i32 }

@OFF = common dso_local global i32 0, align 4
@ATA_LFLAG_SW_ACTIVITY = common dso_local global i32 0, align 4
@EM_MSG_LED_VALUE_OFF = common dso_local global i32 0, align 4
@BLINK_OFF = common dso_local global i32 0, align 4
@EM_MSG_LED_VALUE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32)* @ahci_activity_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_activity_store(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ahci_port_priv*, align 8
  %8 = alloca %struct.ahci_em_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 0
  %12 = load %struct.ata_link*, %struct.ata_link** %11, align 8
  store %struct.ata_link* %12, %struct.ata_link** %5, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 2
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %6, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %17, align 8
  store %struct.ahci_port_priv* %18, %struct.ahci_port_priv** %7, align 8
  %19 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %7, align 8
  %20 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %19, i32 0, i32 0
  %21 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %20, align 8
  %22 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %23 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %21, i64 %24
  store %struct.ahci_em_priv* %25, %struct.ahci_em_priv** %8, align 8
  %26 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %8, align 8
  %27 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @OFF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %2
  %33 = load i32, i32* @ATA_LFLAG_SW_ACTIVITY, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @EM_MSG_LED_VALUE_OFF, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %47 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = shl i64 %48, 8
  %50 = or i64 %45, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ata_port*, i32, i32)*, i32 (%struct.ata_port*, i32, i32)** %58, align 8
  %60 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 %59(%struct.ata_port* %60, i32 %61, i32 4)
  br label %101

63:                                               ; preds = %2
  %64 = load i32, i32* @ATA_LFLAG_SW_ACTIVITY, align 4
  %65 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %66 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @BLINK_OFF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %63
  %73 = load i32, i32* @EM_MSG_LED_VALUE_OFF, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %77 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %81 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = shl i64 %82, 8
  %84 = or i64 %79, %83
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = or i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @EM_MSG_LED_VALUE_ON, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %93 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.ata_port*, i32, i32)*, i32 (%struct.ata_port*, i32, i32)** %95, align 8
  %97 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 %96(%struct.ata_port* %97, i32 %98, i32 4)
  br label %100

100:                                              ; preds = %72, %63
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %8, align 8
  %104 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
