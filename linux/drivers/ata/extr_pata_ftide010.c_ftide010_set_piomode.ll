; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_ftide010_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_ftide010_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ftide010* }
%struct.ftide010 = type { i64, i32 }
%struct.ata_device = type { i64 }

@XFER_PIO_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"set PIO mode %02x, index %d\0A\00", align 1
@pio_active_time = common dso_local global i32* null, align 8
@pio_recovery_time = common dso_local global i32* null, align 8
@FTIDE010_PIO_TIMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ftide010_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftide010_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ftide010*, align 8
  %6 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ftide010*, %struct.ftide010** %10, align 8
  store %struct.ftide010* %11, %struct.ftide010** %5, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XFER_PIO_0, align 8
  %16 = sub i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %18 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i32*, i32** @pio_active_time, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 4
  %30 = load i32*, i32** @pio_recovery_time, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %29, %33
  %35 = load %struct.ftide010*, %struct.ftide010** %5, align 8
  %36 = getelementptr inbounds %struct.ftide010, %struct.ftide010* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FTIDE010_PIO_TIMING, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
