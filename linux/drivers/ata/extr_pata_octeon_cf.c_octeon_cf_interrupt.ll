; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_9__, %struct.TYPE_6__, %struct.octeon_cf_port* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_cf_port = type { i32, i32, i64 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.cvmx_mio_boot_dma_intx = type { i8* }
%union.cvmx_mio_boot_dma_cfgx = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@DMA_INT = common dso_local global i64 0, align 8
@DMA_CFG = common dso_local global i64 0, align 8
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@OCTEON_CF_BUSY_POLL_INTERVAL = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @octeon_cf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_cf_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.octeon_cf_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_queued_cmd*, align 8
  %13 = alloca %union.cvmx_mio_boot_dma_intx, align 8
  %14 = alloca %union.cvmx_mio_boot_dma_cfgx, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ata_host*
  store %struct.ata_host* %16, %struct.ata_host** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %144, %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %25 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %147

28:                                               ; preds = %22
  %29 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %30 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %29, i32 0, i32 2
  %31 = load %struct.ata_port**, %struct.ata_port*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %31, i64 %33
  %35 = load %struct.ata_port*, %struct.ata_port** %34, align 8
  store %struct.ata_port* %35, %struct.ata_port** %11, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 2
  %38 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %37, align 8
  store %struct.octeon_cf_port* %38, %struct.octeon_cf_port** %6, align 8
  %39 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %40 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_INT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i8* @cvmx_read_csr(i64 %43)
  %45 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  store i8* %44, i8** %45, align 8
  %46 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %47 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMA_CFG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i8* @cvmx_read_csr(i64 %50)
  %52 = bitcast %union.cvmx_mio_boot_dma_cfgx* %14 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %54 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %53, i32 %57)
  store %struct.ata_queued_cmd* %58, %struct.ata_queued_cmd** %12, align 8
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %60 = icmp ne %struct.ata_queued_cmd* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %28
  %62 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %63 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %28
  br label %144

70:                                               ; preds = %61
  %71 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = bitcast %union.cvmx_mio_boot_dma_cfgx* %14 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %75
  %81 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sg_is_last(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sg_next(i32 %89)
  %91 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %92 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  store i32 1, i32* %8, align 4
  %93 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %94 = call i32 @octeon_cf_dma_start(%struct.ata_queued_cmd* %93)
  br label %144

95:                                               ; preds = %80
  %96 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %97 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %75, %70
  %100 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %101 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %144

105:                                              ; preds = %99
  %106 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %107 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ioread8(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @ATA_BUSY, align 4
  %113 = load i32, i32* @ATA_DRQ, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %105
  %118 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  store i8* null, i8** %118, align 8
  %119 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to %struct.TYPE_10__*
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %122 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DMA_INT, align 8
  %125 = add nsw i64 %123, %124
  %126 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @cvmx_write_csr(i64 %125, i8* %127)
  %129 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %130 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %129, i32 0, i32 1
  %131 = load i32, i32* @OCTEON_CF_BUSY_POLL_INTERVAL, align 4
  %132 = call i32 @ns_to_ktime(i32 %131)
  %133 = load i32, i32* @OCTEON_CF_BUSY_POLL_INTERVAL, align 4
  %134 = sdiv i32 %133, 5
  %135 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %136 = call i32 @hrtimer_start_range_ns(i32* %130, i32 %132, i32 %134, i32 %135)
  store i32 1, i32* %8, align 4
  br label %143

137:                                              ; preds = %105
  %138 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %139 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %140 = call i32 @octeon_cf_dma_finished(%struct.ata_port* %138, %struct.ata_queued_cmd* %139)
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %137, %117
  br label %144

144:                                              ; preds = %143, %104, %86, %69
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %22

147:                                              ; preds = %22
  %148 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %149 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %148, i32 0, i32 1
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @IRQ_RETVAL(i32 %153)
  ret i32 %154
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @sg_is_last(i32) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @octeon_cf_dma_start(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @octeon_cf_dma_finished(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
