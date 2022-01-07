; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_bus_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_bus_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }

@IDECTRL_ADDR_CTL = common dso_local global i32 0, align 4
@ATA_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32, i64)* @ep93xx_pata_bus_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_bus_softreset(%struct.ata_port* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ep93xx_pata_data*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %11, align 8
  store %struct.ep93xx_pata_data* %12, %struct.ep93xx_pata_data** %7, align 8
  %13 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %7, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %18 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %13, i32 %16, i32 %17)
  %19 = call i32 @udelay(i32 20)
  %20 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %7, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ATA_SRST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %27 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %20, i32 %25, i32 %26)
  %28 = call i32 @udelay(i32 20)
  %29 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %7, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IDECTRL_ADDR_CTL, align 4
  %34 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %29, i32 %32, i32 %33)
  %35 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 2
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ep93xx_pata_wait_after_reset(i32* %41, i32 %42, i64 %43)
  ret i32 %44
}

declare dso_local i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ep93xx_pata_wait_after_reset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
