; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32, i32, %struct.ata_timing }
%struct.ata_timing = type { i32 }
%struct.ata_device = type { i64 }

@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ep93xx_pata_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_pata_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ep93xx_pata_data*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %12, align 8
  store %struct.ep93xx_pata_data* %13, %struct.ep93xx_pata_data** %5, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %14)
  store %struct.ata_device* %15, %struct.ata_device** %6, align 8
  store i64 25000, i64* %7, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %21 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ata_timing_compute(%struct.ata_device* %16, i64 %19, %struct.ata_timing* %21, i64 %22, i32 0)
  %24 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %25 = icmp ne %struct.ata_device* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %33 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @ata_timing_compute(%struct.ata_device* %32, i64 %35, %struct.ata_timing* %8, i64 %36, i32 0)
  %38 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %39 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %38, i32 0, i32 2
  %40 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %41 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %40, i32 0, i32 2
  %42 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %43 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %39, %struct.ata_timing* %41, i32 %44)
  br label %46

46:                                               ; preds = %31, %26, %2
  %47 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %48 = call i32 @ata_pio_need_iordy(%struct.ata_device* %47)
  %49 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %50 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %5, align 8
  %52 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XFER_PIO_0, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @ep93xx_pata_enable_pio(i32 %53, i64 %58)
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i64, %struct.ata_timing*, i64, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @ep93xx_pata_enable_pio(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
