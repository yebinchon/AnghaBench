; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_dma_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_dma_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_9__*, i32, %struct.octeon_cf_port*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 (%struct.ata_port*)* }
%struct.octeon_cf_port = type { i64 }
%struct.TYPE_6__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%union.cvmx_mio_boot_dma_cfgx = type { i64 }
%union.cvmx_mio_boot_dma_intx = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ata%u: protocol %d task_state %d\0A\00", align 1
@HSM_ST_LAST = common dso_local global i64 0, align 8
@DMA_CFG = common dso_local global i64 0, align 8
@AC_ERR_HOST_BUS = common dso_local global i32 0, align 4
@HSM_ST_ERR = common dso_local global i64 0, align 8
@DMA_INT_EN = common dso_local global i64 0, align 8
@DMA_INT = common dso_local global i64 0, align 8
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"DMA stat 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*)* @octeon_cf_dma_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_cf_dma_finished(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca %struct.ata_eh_info*, align 8
  %7 = alloca %struct.octeon_cf_port*, align 8
  %8 = alloca %union.cvmx_mio_boot_dma_cfgx, align 8
  %9 = alloca %union.cvmx_mio_boot_dma_intx, align 8
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %5, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.ata_eh_info* %13, %struct.ata_eh_info** %6, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 3
  %16 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %15, align 8
  store %struct.octeon_cf_port* %16, %struct.octeon_cf_port** %7, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @VPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %23, i64 %26)
  %28 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HSM_ST_LAST, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

34:                                               ; preds = %2
  %35 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %7, align 8
  %36 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DMA_CFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @cvmx_read_csr(i64 %39)
  %41 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  store i64 %40, i64* %41, align 8
  %42 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1048575
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* @AC_ERR_HOST_BUS, align 4
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* @HSM_ST_ERR, align 8
  %53 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %34
  %56 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  store i64 0, i64* %56, align 8
  %57 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %7, align 8
  %60 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DMA_CFG, align 8
  %63 = add nsw i64 %61, %62
  %64 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @cvmx_write_csr(i64 %63, i64 %65)
  %67 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  store i64 0, i64* %67, align 8
  %68 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %7, align 8
  %69 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DMA_INT_EN, align 8
  %72 = add nsw i64 %70, %71
  %73 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @cvmx_write_csr(i64 %72, i64 %74)
  %76 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %7, align 8
  %79 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DMA_INT, align 8
  %82 = add nsw i64 %80, %81
  %83 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @cvmx_write_csr(i64 %82, i64 %84)
  %86 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %89, align 8
  %91 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %92 = call i32 %90(%struct.ata_port* %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %94 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ata_sff_hsm_move(%struct.ata_port* %93, %struct.ata_queued_cmd* %94, i32 %95, i32 0)
  %97 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %55
  %103 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %104 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ATA_PROT_DMA, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %102, %55
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %33
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @VPRINTK(i8*, i32, i64, i64) #1

declare dso_local i64 @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @ata_sff_hsm_move(%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
