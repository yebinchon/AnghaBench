; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_seattle_transmit_led_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_seattle.c_seattle_transmit_led_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, %struct.ahci_port_priv*, %struct.TYPE_2__* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { %struct.seattle_plat_data* }
%struct.seattle_plat_data = type { i32 }

@EM_MSG_LED_PMP_SLOT = common dso_local global i32 0, align 4
@EM_MAX_SLOTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACTIVITY_MASK = common dso_local global i32 0, align 4
@LOCATE_MASK = common dso_local global i32 0, align 4
@FAULT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32, i32)* @seattle_transmit_led_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seattle_transmit_led_message(%struct.ata_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahci_host_priv*, align 8
  %9 = alloca %struct.ahci_port_priv*, align 8
  %10 = alloca %struct.seattle_plat_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ahci_em_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %18, align 8
  store %struct.ahci_host_priv* %19, %struct.ahci_host_priv** %8, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 2
  %22 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %21, align 8
  store %struct.ahci_port_priv* %22, %struct.ahci_port_priv** %9, align 8
  %23 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %23, i32 0, i32 0
  %25 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %24, align 8
  store %struct.seattle_plat_data* %25, %struct.seattle_plat_data** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EM_MSG_LED_PMP_SLOT, align 4
  %28 = and i32 %26, %27
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @EM_MAX_SLOTS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %132

36:                                               ; preds = %3
  %37 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %9, align 8
  %38 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %37, i32 0, i32 0
  %39 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %39, i64 %41
  store %struct.ahci_em_priv* %42, %struct.ahci_em_priv** %13, align 8
  %43 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %10, align 8
  %44 = getelementptr inbounds %struct.seattle_plat_data, %struct.seattle_plat_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ioread32(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ACTIVITY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ACTIVITY_BIT_POS(i32 %54)
  %56 = shl i32 1, %55
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %68

59:                                               ; preds = %36
  %60 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ACTIVITY_BIT_POS(i32 %62)
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %59, %51
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LOCATE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %75 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LOCATE_BIT_POS(i32 %76)
  %78 = shl i32 1, %77
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %90

81:                                               ; preds = %68
  %82 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %83 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @LOCATE_BIT_POS(i32 %84)
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %81, %73
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @FAULT_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FAULT_BIT_POS(i32 %98)
  %100 = shl i32 1, %99
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %112

103:                                              ; preds = %90
  %104 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @FAULT_BIT_POS(i32 %106)
  %108 = shl i32 1, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %103, %95
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.seattle_plat_data*, %struct.seattle_plat_data** %10, align 8
  %115 = getelementptr inbounds %struct.seattle_plat_data, %struct.seattle_plat_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @iowrite32(i32 %113, i32 %116)
  %118 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %119 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @spin_lock_irqsave(i32 %120, i64 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %13, align 8
  %125 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %127 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32 %128, i64 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %112, %33
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @ACTIVITY_BIT_POS(i32) #1

declare dso_local i32 @LOCATE_BIT_POS(i32) #1

declare dso_local i32 @FAULT_BIT_POS(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
