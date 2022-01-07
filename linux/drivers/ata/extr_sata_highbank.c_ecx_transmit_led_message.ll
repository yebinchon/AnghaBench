; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ecx_transmit_led_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_ecx_transmit_led_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ahci_port_priv*, %struct.TYPE_2__* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32, %struct.ecx_plat_data* }
%struct.ecx_plat_data = type { i32, i32, i32, i32, i32* }

@EM_MSG_LED_PMP_SLOT = common dso_local global i32 0, align 4
@EM_MAX_SLOTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EM_MSG_TYPE_LED = common dso_local global i32 0, align 4
@sgpio_lock = common dso_local global i32 0, align 4
@SLOAD = common dso_local global i64 0, align 8
@SGPIO_SIGNALS = common dso_local global i32 0, align 4
@SDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32, i32)* @ecx_transmit_led_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_transmit_led_message(%struct.ata_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahci_host_priv*, align 8
  %9 = alloca %struct.ecx_plat_data*, align 8
  %10 = alloca %struct.ahci_port_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ahci_em_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %19, align 8
  store %struct.ahci_host_priv* %20, %struct.ahci_host_priv** %8, align 8
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %21, i32 0, i32 1
  %23 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %22, align 8
  store %struct.ecx_plat_data* %23, %struct.ecx_plat_data** %9, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  %26 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %25, align 8
  store %struct.ahci_port_priv* %26, %struct.ahci_port_priv** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EM_MSG_LED_PMP_SLOT, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @EM_MAX_SLOTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %10, align 8
  %36 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %35, i32 0, i32 0
  %37 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %37, i64 %39
  store %struct.ahci_em_priv* %40, %struct.ahci_em_priv** %14, align 8
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %139

44:                                               ; preds = %34
  %45 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  %46 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EM_MSG_TYPE_LED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %4, align 4
  br label %139

53:                                               ; preds = %44
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_lock_irqsave(i32* @sgpio_lock, i64 %54)
  %56 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %57 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %58 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ecx_parse_sgpio(%struct.ecx_plat_data* %56, i32 %59, i32 %60)
  %62 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %63 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %74, %53
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %68 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %73 = call i32 @ecx_led_cycle_clock(%struct.ecx_plat_data* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %65

77:                                               ; preds = %65
  %78 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %79 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @SLOAD, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @gpiod_set_value(i32 %83, i32 1)
  %85 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %86 = call i32 @ecx_led_cycle_clock(%struct.ecx_plat_data* %85)
  %87 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %88 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @SLOAD, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @gpiod_set_value(i32 %92, i32 0)
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %116, %77
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @SGPIO_SIGNALS, align 4
  %97 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %98 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %94
  %103 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %104 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @SDATA, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = and i32 %109, 1
  %111 = call i32 @gpiod_set_value(i32 %108, i32 %110)
  %112 = load i32, i32* %15, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %115 = call i32 @ecx_led_cycle_clock(%struct.ecx_plat_data* %114)
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %94

119:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %129, %119
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %123 = getelementptr inbounds %struct.ecx_plat_data, %struct.ecx_plat_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.ecx_plat_data*, %struct.ecx_plat_data** %9, align 8
  %128 = call i32 @ecx_led_cycle_clock(%struct.ecx_plat_data* %127)
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %120

132:                                              ; preds = %120
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %14, align 8
  %135 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* @sgpio_lock, i64 %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %132, %51, %41
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ecx_parse_sgpio(%struct.ecx_plat_data*, i32, i32) #1

declare dso_local i32 @ecx_led_cycle_clock(%struct.ecx_plat_data*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
