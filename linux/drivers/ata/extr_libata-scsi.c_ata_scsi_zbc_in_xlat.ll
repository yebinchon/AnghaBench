; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_zbc_in_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_zbc_in_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, i32, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.scsi_cmnd = type { i32*, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid cdb length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"non-matching transfer count (%d/%d)\0A\00", align 1
@ZI_REPORT_ZONES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid service action %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid transfer count %d\0A\00", align 1
@ATA_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_RECV = common dso_local global i32 0, align 4
@ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN = common dso_local global i32 0, align 4
@ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES = common dso_local global i32 0, align 4
@ATA_CMD_ZAC_MGMT_IN = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@ata_scsi_report_zones_complete = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_zbc_in_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_zbc_in_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 5
  store %struct.ata_taskfile* %15, %struct.ata_taskfile** %4, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %5, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 255, i32* %11, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 16
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, i32, ...) @ata_dev_warn(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 15, i32* %8, align 4
  br label %207

37:                                               ; preds = %1
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @scsi_16_lba_len(i32* %38, i32* %12, i32* %13)
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %42 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %41)
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %49)
  %51 = call i32 (i32, i8*, i32, ...) @ata_dev_warn(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50)
  br label %215

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ZI_REPORT_ZONES, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ata_dev_warn(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 1, i32* %8, align 4
  br label %207

66:                                               ; preds = %52
  %67 = load i32, i32* %13, align 4
  %68 = sdiv i32 %67, 512
  %69 = icmp sgt i32 %68, 65535
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 512
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = srem i32 %74, 512
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %70, %66
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i32, i8*, i32, ...) @ata_dev_warn(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %215

83:                                               ; preds = %73
  %84 = load i32, i32* %13, align 4
  %85 = sdiv i32 %84, 512
  store i32 %85, i32* %7, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 14
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 191
  store i32 %89, i32* %10, align 4
  %90 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ata_ncq_enabled(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %133

95:                                               ; preds = %83
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %97 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ata_fpdma_zac_mgmt_in_supported(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %95
  %102 = load i32, i32* @ATA_PROT_NCQ, align 4
  %103 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %104 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @ATA_CMD_FPDMA_RECV, align 4
  %106 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %107 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %106, i32 0, i32 14
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN, align 4
  %109 = and i32 %108, 31
  %110 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %111 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %113 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 3
  %116 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 255
  %120 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %121 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %7, align 4
  %123 = ashr i32 %122, 8
  %124 = and i32 %123, 255
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 8
  %130 = or i32 %127, %129
  %131 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %132 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  br label %155

133:                                              ; preds = %95, %83
  %134 = load i32, i32* @ATA_CMD_ZAC_MGMT_IN, align 4
  %135 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %136 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES, align 4
  %138 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %139 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @ATA_PROT_DMA, align 4
  %141 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %142 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %145 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = ashr i32 %146, 8
  %148 = and i32 %147, 255
  %149 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %150 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %151, 255
  %153 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %154 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %133, %101
  %156 = load i32, i32* @ATA_LBA, align 4
  %157 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %158 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %157, i32 0, i32 12
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %12, align 4
  %160 = ashr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %163 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %168 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %12, align 4
  %170 = and i32 %169, 255
  %171 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %172 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = ashr i32 %173, 40
  %175 = and i32 %174, 255
  %176 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %177 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %12, align 4
  %179 = ashr i32 %178, 32
  %180 = and i32 %179, 255
  %181 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %182 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %12, align 4
  %184 = ashr i32 %183, 24
  %185 = and i32 %184, 255
  %186 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %187 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %186, i32 0, i32 10
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %189 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %194 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %198 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %199 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %203 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %202)
  %204 = load i32, i32* @ata_scsi_report_zones_complete, align 4
  %205 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %206 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  store i32 0, i32* %2, align 4
  br label %222

207:                                              ; preds = %60, %29
  %208 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %209 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @ata_scsi_set_invalid_field(i32 %210, %struct.scsi_cmnd* %211, i32 %212, i32 %213)
  store i32 1, i32* %2, align 4
  br label %222

215:                                              ; preds = %77, %44
  %216 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %217 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %220 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %221 = call i32 @ata_scsi_set_sense(i32 %218, %struct.scsi_cmnd* %219, i32 %220, i32 26, i32 0)
  store i32 1, i32* %2, align 4
  br label %222

222:                                              ; preds = %215, %207, %155
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @scsi_16_lba_len(i32*, i32*, i32*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @ata_ncq_enabled(i32) #1

declare dso_local i64 @ata_fpdma_zac_mgmt_in_supported(i32) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_scsi_set_invalid_field(i32, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(i32, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
