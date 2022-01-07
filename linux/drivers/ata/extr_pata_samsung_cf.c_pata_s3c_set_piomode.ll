; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.s3c_ide_info* }
%struct.s3c_ide_info = type { i64, i32 }
%struct.ata_device = type { i32 }
%struct.ata_timing = type { i32 }

@S3C_ATA_CFG = common dso_local global i64 0, align 8
@S3C_ATA_CFG_IORDYEN = common dso_local global i32 0, align 4
@S3C_ATA_PIO_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pata_s3c_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_s3c_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.s3c_ide_info*, align 8
  %6 = alloca %struct.ata_timing, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %13, align 8
  store %struct.s3c_ide_info* %14, %struct.s3c_ide_info** %5, align 8
  %15 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %5, align 8
  %16 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S3C_ATA_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = call i64 @ata_pio_need_iordy(%struct.ata_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @S3C_ATA_CFG_IORDYEN, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @S3C_ATA_CFG_IORDYEN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %5, align 8
  %35 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @clk_get_rate(i32 %36)
  %38 = udiv i64 1000000000, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %41 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 1000
  %46 = call i32 @ata_timing_compute(%struct.ata_device* %40, i32 %43, %struct.ata_timing* %6, i32 %45, i32 0)
  %47 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %5, align 8
  %48 = call i32 @pata_s3c_setup_timing(%struct.s3c_ide_info* %47, %struct.ata_timing* %6)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %5, align 8
  %51 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S3C_ATA_CFG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.s3c_ide_info*, %struct.s3c_ide_info** %5, align 8
  %58 = getelementptr inbounds %struct.s3c_ide_info, %struct.s3c_ide_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @S3C_ATA_PIO_TIME, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @pata_s3c_setup_timing(%struct.s3c_ide_info*, %struct.ata_timing*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
