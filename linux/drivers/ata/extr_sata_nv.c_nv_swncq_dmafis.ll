; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_dmafis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_swncq_dmafis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.nv_swncq_port_priv* }
%struct.TYPE_4__ = type { i64 }
%struct.nv_swncq_port_priv = type { i64 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dma setup tag 0x%x\0A\00", align 1
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_PRD_TBL_SZ = common dso_local global i32 0, align 4
@ATA_DMA_TABLE_OFS = common dso_local global i64 0, align 8
@ATA_DMA_CMD = common dso_local global i64 0, align 8
@ATA_DMA_WR = common dso_local global i32 0, align 4
@ATA_DMA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @nv_swncq_dmafis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_swncq_dmafis(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv_swncq_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %9, align 8
  store %struct.nv_swncq_port_priv* %10, %struct.nv_swncq_port_priv** %7, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = call i32 @__ata_bmdma_stop(%struct.ata_port* %11)
  %13 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %14 = call i32 @nv_swncq_tag(%struct.ata_port* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %17, i32 %18)
  store %struct.ata_queued_cmd* %19, %struct.ata_queued_cmd** %3, align 8
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %21 = icmp ne %struct.ata_queued_cmd* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %79

27:                                               ; preds = %1
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %7, align 8
  %35 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ATA_PRD_TBL_SZ, align 4
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %36, %42
  %44 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %45 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ATA_DMA_TABLE_OFS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @iowrite32(i64 %43, i64 %49)
  %51 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATA_DMA_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @ioread8(i64 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @ATA_DMA_WR, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %27
  %65 = load i32, i32* @ATA_DMA_WR, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %27
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ATA_DMA_START, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %73 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ATA_DMA_CMD, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite8(i32 %71, i64 %77)
  br label %79

79:                                               ; preds = %68, %26
  ret void
}

declare dso_local i32 @__ata_bmdma_stop(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_tag(%struct.ata_port*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
