; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_imx.c_pata_imx_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64 }
%struct.pata_imx_priv = type { i64, i32 }
%struct.ata_timing = type { i32, i32 }

@XFER_PIO_0 = common dso_local global i64 0, align 8
@XFER_PIO_4 = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_OFF = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_ON = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_1 = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_2W = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_2R = common dso_local global i64 0, align 8
@PATA_IMX_ATA_TIME_PIO_RDX = common dso_local global i64 0, align 8
@pio_t4 = common dso_local global i32* null, align 8
@PATA_IMX_ATA_TIME_4 = common dso_local global i64 0, align 8
@pio_t9 = common dso_local global i32* null, align 8
@PATA_IMX_ATA_TIME_9 = common dso_local global i64 0, align 8
@pio_tA = common dso_local global i32* null, align 8
@PATA_IMX_ATA_TIME_AX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*, %struct.pata_imx_priv*)* @pata_imx_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_imx_set_timing(%struct.ata_device* %0, %struct.pata_imx_priv* %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.pata_imx_priv*, align 8
  %5 = alloca %struct.ata_timing, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  store %struct.pata_imx_priv* %1, %struct.pata_imx_priv** %4, align 8
  %9 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %10 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XFER_PIO_0, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XFER_PIO_4, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %18, %2
  br label %129

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = udiv i64 1000000000, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %33 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = call i32 @ata_timing_compute(%struct.ata_device* %32, i64 %35, %struct.ata_timing* %5, i32 %37, i32 0)
  %39 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XFER_PIO_0, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %46 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PATA_IMX_ATA_TIME_OFF, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writeb(i32 3, i64 %49)
  %51 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %52 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PATA_IMX_ATA_TIME_ON, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeb(i32 3, i64 %55)
  %57 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %60 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PATA_IMX_ATA_TIME_1, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writeb(i32 %58, i64 %63)
  %65 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %68 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PATA_IMX_ATA_TIME_2W, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writeb(i32 %66, i64 %71)
  %73 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %76 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PATA_IMX_ATA_TIME_2R, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writeb(i32 %74, i64 %79)
  %81 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %82 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PATA_IMX_ATA_TIME_PIO_RDX, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writeb(i32 1, i64 %85)
  %87 = load i32*, i32** @pio_t4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sdiv i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %96 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PATA_IMX_ATA_TIME_4, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writeb(i32 %94, i64 %99)
  %101 = load i32*, i32** @pio_t9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %105, %106
  %108 = add nsw i32 %107, 1
  %109 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %110 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PATA_IMX_ATA_TIME_9, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writeb(i32 %108, i64 %113)
  %115 = load i32*, i32** @pio_tA, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sdiv i32 %119, %120
  %122 = add nsw i32 %121, 1
  %123 = load %struct.pata_imx_priv*, %struct.pata_imx_priv** %4, align 8
  %124 = getelementptr inbounds %struct.pata_imx_priv, %struct.pata_imx_priv* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PATA_IMX_ATA_TIME_AX, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writeb(i32 %122, i64 %127)
  br label %129

129:                                              ; preds = %28, %27
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i64, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
