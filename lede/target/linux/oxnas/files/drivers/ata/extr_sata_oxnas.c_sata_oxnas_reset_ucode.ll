; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_ucode.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_reset_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { %struct.sata_oxnas_host_priv* }
%struct.sata_oxnas_host_priv = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@UNKNOWN_MODE = common dso_local global i32 0, align 4
@DEVICE_CONTROL = common dso_local global i64 0, align 8
@DEVICE_CONTROL_ATA_ERR_OVERRIDE = common dso_local global i32 0, align 4
@OXNASSATA_NOTRAID = common dso_local global i32 0, align 4
@PORT_ERROR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*, i32, i32)* @sata_oxnas_reset_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_reset_ucode(%struct.ata_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sata_oxnas_host_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %10 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %9, i32 0, i32 0
  %11 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %10, align 8
  store %struct.sata_oxnas_host_priv* %11, %struct.sata_oxnas_host_priv** %7, align 8
  %12 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %17 = load i32, i32* @UNKNOWN_MODE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sata_oxnas_set_mode(%struct.ata_host* %16, i32 %17, i32 %18)
  %20 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %7, align 8
  %21 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DEVICE_CONTROL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread32(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @DEVICE_CONTROL_ATA_ERR_OVERRIDE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %7, align 8
  %31 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DEVICE_CONTROL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %38 = load i32, i32* @OXNASSATA_NOTRAID, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sata_oxnas_set_mode(%struct.ata_host* %37, i32 %38, i32 %39)
  %41 = load %struct.sata_oxnas_host_priv*, %struct.sata_oxnas_host_priv** %7, align 8
  %42 = getelementptr inbounds %struct.sata_oxnas_host_priv, %struct.sata_oxnas_host_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PORT_ERROR_MASK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 0, i64 %45)
  br label %47

47:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @sata_oxnas_set_mode(%struct.ata_host*, i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
