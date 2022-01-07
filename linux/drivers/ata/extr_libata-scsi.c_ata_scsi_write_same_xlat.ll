; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_write_same_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_write_same_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.ata_device*, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.ata_device = type { i32, i32, i32 }
%struct.scsi_cmnd = type { i32*, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_HORKAGE_NOTRIM = common dso_local global i32 0, align 4
@ATA_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_SEND = common dso_local global i32 0, align 4
@ATA_SUBCMD_FPDMA_SEND_DSM = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_CMD_DSM = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_write_same_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_write_same_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 3
  store %struct.ata_taskfile* %18, %struct.ata_taskfile** %4, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %5, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 3
  %24 = load %struct.scsi_device*, %struct.scsi_device** %23, align 8
  store %struct.scsi_device* %24, %struct.scsi_device** %6, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 1
  %30 = load %struct.ata_device*, %struct.ata_device** %29, align 8
  store %struct.ata_device* %30, %struct.ata_device** %8, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = lshr i64 %34, 3
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  store i32 255, i32* %15, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 8
  store i32 %40, i32* %16, align 4
  %41 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %190

50:                                               ; preds = %1
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @blk_rq_is_passthrough(i32 %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %190

58:                                               ; preds = %50
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 16
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 15, i32* %14, align 4
  br label %179

67:                                               ; preds = %58
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @scsi_16_lba_len(i32* %68, i32* %10, i32* %11)
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %74 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATA_HORKAGE_NOTRIM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %81 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ata_id_has_trim(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %72, %67
  store i32 1, i32* %14, align 4
  store i32 3, i32* %15, align 4
  br label %179

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 65535, %88
  %90 = icmp sgt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 2, i32* %14, align 4
  br label %179

92:                                               ; preds = %86
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %94 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %185

97:                                               ; preds = %92
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @ata_format_dsm_trim_descr(%struct.scsi_cmnd* %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %185

108:                                              ; preds = %97
  %109 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %110 = call i64 @ata_ncq_enabled(%struct.ata_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %114 = call i64 @ata_fpdma_dsm_supported(%struct.ata_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %112
  %117 = load i32, i32* @ATA_PROT_NCQ, align 4
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @ATA_CMD_FPDMA_SEND, align 4
  %121 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %122 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @ATA_SUBCMD_FPDMA_SEND_DSM, align 4
  %124 = and i32 %123, 31
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %128 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 3
  %131 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %132 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sdiv i32 %133, 512
  %135 = ashr i32 %134, 8
  %136 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %137 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sdiv i32 %138, 512
  %140 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %141 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %143 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %142, i32 0, i32 4
  store i32 1, i32* %143, align 4
  br label %165

144:                                              ; preds = %112, %108
  %145 = load i32, i32* @ATA_PROT_DMA, align 4
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  %148 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %149 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %148, i32 0, i32 2
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* @ATA_DSM_TRIM, align 4
  %151 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %152 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sdiv i32 %153, 512
  %155 = ashr i32 %154, 8
  %156 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %157 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sdiv i32 %158, 512
  %160 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %161 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @ATA_CMD_DSM, align 4
  %163 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %164 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %144, %116
  %166 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %167 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %174 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %178 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %177)
  store i32 0, i32* %2, align 4
  br label %195

179:                                              ; preds = %91, %85, %66
  %180 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %180, %struct.scsi_cmnd* %181, i32 %182, i32 %183)
  store i32 1, i32* %2, align 4
  br label %195

185:                                              ; preds = %107, %96
  %186 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %188 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %189 = call i32 @ata_scsi_set_sense(%struct.ata_device* %186, %struct.scsi_cmnd* %187, i32 %188, i32 26, i32 0)
  store i32 1, i32* %2, align 4
  br label %195

190:                                              ; preds = %57, %49
  %191 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %193 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %194 = call i32 @ata_scsi_set_sense(%struct.ata_device* %191, %struct.scsi_cmnd* %192, i32 %193, i32 32, i32 0)
  store i32 1, i32* %2, align 4
  br label %195

195:                                              ; preds = %190, %185, %179, %165
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_rq_is_passthrough(i32) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @ata_id_has_trim(i32) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @ata_format_dsm_trim_descr(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i64 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i64 @ata_fpdma_dsm_supported(%struct.ata_device*) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
