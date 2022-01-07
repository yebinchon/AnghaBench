; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @ep93xx_pata_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ep93xx_pata_data*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %7, align 8
  store %struct.ep93xx_pata_data* %8, %struct.ep93xx_pata_data** %3, align 8
  %9 = load i32, i32* @XFER_PIO_0, align 4
  %10 = call i32* @ata_timing_find_mode(i32 %9)
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %3, align 8
  %13 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret i32 0
}

declare dso_local i32* @ata_timing_find_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
