; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_sil24.c_sil24_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sil24_port_priv*, %struct.TYPE_2__* }
%struct.sil24_port_priv = type { i32, %union.sil24_cmd_block* }
%union.sil24_cmd_block = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@SIL24_MAX_CMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIL24_HOST_BAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@SIL24_PORT_BAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @sil24_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sil24_port_start(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sil24_port_priv*, align 8
  %6 = alloca %union.sil24_cmd_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @SIL24_MAX_CMDS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sil24_port_priv* @devm_kzalloc(%struct.device* %17, i32 16, i32 %18)
  store %struct.sil24_port_priv* %19, %struct.sil24_port_priv** %5, align 8
  %20 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %5, align 8
  %21 = icmp ne %struct.sil24_port_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %union.sil24_cmd_block* @dmam_alloc_coherent(%struct.device* %26, i64 %27, i32* %8, i32 %28)
  store %union.sil24_cmd_block* %29, %union.sil24_cmd_block** %6, align 8
  %30 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %6, align 8
  %31 = icmp ne %union.sil24_cmd_block* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load %union.sil24_cmd_block*, %union.sil24_cmd_block** %6, align 8
  %37 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %5, align 8
  %38 = getelementptr inbounds %struct.sil24_port_priv, %struct.sil24_port_priv* %37, i32 0, i32 1
  store %union.sil24_cmd_block* %36, %union.sil24_cmd_block** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %5, align 8
  %41 = getelementptr inbounds %struct.sil24_port_priv, %struct.sil24_port_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sil24_port_priv*, %struct.sil24_port_priv** %5, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  store %struct.sil24_port_priv* %42, %struct.sil24_port_priv** %44, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = load i32, i32* @SIL24_HOST_BAR, align 4
  %47 = call i32 @ata_port_pbar_desc(%struct.ata_port* %45, i32 %46, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %49 = load i32, i32* @SIL24_PORT_BAR, align 4
  %50 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %51 = call i32 @sil24_port_offset(%struct.ata_port* %50)
  %52 = call i32 @ata_port_pbar_desc(%struct.ata_port* %48, i32 %49, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %35, %32, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.sil24_port_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %union.sil24_cmd_block* @dmam_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @ata_port_pbar_desc(%struct.ata_port*, i32, i32, i8*) #1

declare dso_local i32 @sil24_port_offset(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
