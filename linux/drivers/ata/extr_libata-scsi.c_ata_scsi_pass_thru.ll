; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_pass_thru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_pass_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, %struct.ata_device*, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.ata_device = type { i64, i32, i64 }
%struct.scsi_cmnd = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VARIABLE_LENGTH_CMD = common dso_local global i32 0, align 4
@ATA_PROT_UNKNOWN = common dso_local global i64 0, align 8
@ATA_PROT_NCQ_NODATA = common dso_local global i64 0, align 8
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_16 = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_12 = common dso_local global i32 0, align 4
@ATA_DEV1 = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i64 0, align 8
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@ATA_QCFLAG_QUIET = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"invalid multi_count %u ignored\0A\00", align 1
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@SETFEATURES_XFER = common dso_local global i32 0, align 4
@libata_allow_tpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_pass_thru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_pass_thru(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 5
  store %struct.ata_taskfile* %12, %struct.ata_taskfile** %4, align 8
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %5, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 3
  %18 = load %struct.ata_device*, %struct.ata_device** %17, align 8
  store %struct.ata_device* %18, %struct.ata_device** %6, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VARIABLE_LENGTH_CMD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 9, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ata_scsi_map_proto(i32 %34)
  %36 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %37 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATA_PROT_UNKNOWN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %479

44:                                               ; preds = %28
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ata_is_ncq(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i64, i64* @ATA_PROT_NCQ_NODATA, align 8
  %61 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %62 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %50, %44
  %64 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ATA_16, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %63
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %100 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 11
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %107 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %108 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %118

111:                                              ; preds = %74
  %112 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %115 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %111, %80
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %123 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %128 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %133 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 10
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 12
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %143 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 13
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %148 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 14
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %153 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %152, i32 0, i32 13
  store i32 %151, i32* %153, align 8
  br label %288

154:                                              ; preds = %63
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ATA_12, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %202

160:                                              ; preds = %154
  %161 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %164 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %171 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %176 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %181 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 6
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %186 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %185, i32 0, i32 10
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %191 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %196 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %195, i32 0, i32 12
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 9
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %201 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %200, i32 0, i32 13
  store i32 %199, i32* %201, align 8
  br label %287

202:                                              ; preds = %154
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 10
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %202
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 20
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %213 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 22
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %218 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 16
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %223 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %7, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 15
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %228 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 14
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %233 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %235 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %236 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %246

239:                                              ; preds = %202
  %240 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %243 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %239, %208
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 21
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %251 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %250, i32 0, i32 7
  store i32 %249, i32* %251, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 23
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %256 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %255, i32 0, i32 8
  store i32 %254, i32* %256, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 19
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %261 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %260, i32 0, i32 9
  store i32 %259, i32* %261, align 8
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 18
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %266 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %265, i32 0, i32 10
  store i32 %264, i32* %266, align 4
  %267 = load i32*, i32** %7, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 17
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %271 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %270, i32 0, i32 11
  store i32 %269, i32* %271, align 8
  %272 = load i32*, i32** %7, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 24
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %276 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %275, i32 0, i32 12
  store i32 %274, i32* %276, align 4
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 25
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %281 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %280, i32 0, i32 13
  store i32 %279, i32* %281, align 8
  %282 = load i32*, i32** %7, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 28
  %284 = call i32 @get_unaligned_be32(i32* %283)
  %285 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %286 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %285, i32 0, i32 14
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %246, %160
  br label %288

288:                                              ; preds = %287, %118
  %289 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %290 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @ata_is_ncq(i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %288
  %295 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %296 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = shl i32 %297, 3
  %299 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %300 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %299, i32 0, i32 8
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %294, %288
  %302 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %303 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %308 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @ATA_DEV1, align 4
  %311 = or i32 %309, %310
  br label %319

312:                                              ; preds = %301
  %313 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %314 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %313, i32 0, i32 12
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @ATA_DEV1, align 4
  %317 = xor i32 %316, -1
  %318 = and i32 %315, %317
  br label %319

319:                                              ; preds = %312, %306
  %320 = phi i32 [ %311, %306 ], [ %318, %312 ]
  %321 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %322 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %321, i32 0, i32 12
  store i32 %320, i32* %322, align 4
  %323 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %324 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %323, i32 0, i32 13
  %325 = load i32, i32* %324, align 8
  switch i32 %325, label %351 [
    i32 148, label %326
    i32 147, label %326
    i32 136, label %326
    i32 135, label %326
    i32 157, label %343
    i32 159, label %343
    i32 158, label %343
    i32 150, label %343
    i32 149, label %343
    i32 144, label %343
    i32 156, label %343
    i32 146, label %343
    i32 145, label %343
    i32 154, label %343
    i32 153, label %343
    i32 143, label %343
    i32 142, label %343
    i32 141, label %343
    i32 140, label %343
    i32 139, label %343
    i32 138, label %343
    i32 137, label %343
    i32 131, label %343
    i32 130, label %343
    i32 155, label %343
    i32 134, label %343
    i32 133, label %343
    i32 132, label %343
    i32 152, label %343
    i32 151, label %343
    i32 129, label %343
    i32 128, label %343
  ]

326:                                              ; preds = %319, %319, %319, %319
  %327 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %328 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ATA_PROT_PIO, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %337, label %332

332:                                              ; preds = %326
  %333 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %334 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 1
  br i1 %336, label %337, label %338

337:                                              ; preds = %332, %326
  store i32 1, i32* %8, align 4
  br label %479

338:                                              ; preds = %332
  %339 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %340 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %339)
  %341 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %342 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %341, i32 0, i32 2
  store i32 %340, i32* %342, align 8
  br label %355

343:                                              ; preds = %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319, %319
  %344 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %345 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %344, i32 0, i32 2
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %350 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 8
  br label %355

351:                                              ; preds = %319
  %352 = load i32, i32* @ATA_SECT_SIZE, align 4
  %353 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %354 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %351, %343, %338
  %356 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %357 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %358 = or i32 %356, %357
  %359 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %360 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %364 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @DMA_TO_DEVICE, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %355
  %369 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %370 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %371 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 8
  br label %374

374:                                              ; preds = %368, %355
  %375 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %376 = load i32, i32* @ATA_QCFLAG_QUIET, align 4
  %377 = or i32 %375, %376
  %378 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %379 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %383 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %382)
  %384 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %385 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @ATA_PROT_DMA, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %395

389:                                              ; preds = %374
  %390 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %391 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  store i32 1, i32* %8, align 4
  br label %479

395:                                              ; preds = %389, %374
  %396 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %397 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = call i64 @ata_is_ncq(i64 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %395
  %402 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %403 = call i32 @ata_ncq_enabled(%struct.ata_device* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %401
  store i32 1, i32* %8, align 4
  br label %479

406:                                              ; preds = %401, %395
  %407 = load i32*, i32** %7, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = and i32 %409, 224
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %406
  %413 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %414 = call i64 @is_multi_taskfile(%struct.ata_taskfile* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  store i32 1, i32* %8, align 4
  br label %479

417:                                              ; preds = %412, %406
  %418 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %419 = call i64 @is_multi_taskfile(%struct.ata_taskfile* %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %437

421:                                              ; preds = %417
  %422 = load i32*, i32** %7, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  %424 = load i32, i32* %423, align 4
  %425 = ashr i32 %424, 5
  %426 = shl i32 1, %425
  store i32 %426, i32* %10, align 4
  %427 = load i32, i32* %10, align 4
  %428 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %429 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %427, %430
  br i1 %431, label %432, label %436

432:                                              ; preds = %421
  %433 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %434 = load i32, i32* %10, align 4
  %435 = call i32 @ata_dev_warn(%struct.ata_device* %433, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %434)
  br label %436

436:                                              ; preds = %432, %421
  br label %437

437:                                              ; preds = %436, %417
  %438 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %439 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %438, i32 0, i32 13
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %437
  %444 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %445 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %444, i32 0, i32 7
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @SETFEATURES_XFER, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %449, label %457

449:                                              ; preds = %443
  %450 = load i32*, i32** %7, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @ATA_16, align 4
  %454 = icmp eq i32 %452, %453
  %455 = zext i1 %454 to i64
  %456 = select i1 %454, i32 4, i32 3
  store i32 %456, i32* %8, align 4
  br label %479

457:                                              ; preds = %443, %437
  %458 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %459 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %458, i32 0, i32 13
  %460 = load i32, i32* %459, align 8
  %461 = icmp sge i32 %460, 92
  br i1 %461, label %462, label %478

462:                                              ; preds = %457
  %463 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %464 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %463, i32 0, i32 13
  %465 = load i32, i32* %464, align 8
  %466 = icmp sle i32 %465, 95
  br i1 %466, label %467, label %478

467:                                              ; preds = %462
  %468 = load i32, i32* @libata_allow_tpm, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %478, label %470

470:                                              ; preds = %467
  %471 = load i32*, i32** %7, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @ATA_16, align 4
  %475 = icmp eq i32 %473, %474
  %476 = zext i1 %475 to i64
  %477 = select i1 %475, i32 14, i32 9
  store i32 %477, i32* %8, align 4
  br label %479

478:                                              ; preds = %467, %462, %457
  store i32 0, i32* %2, align 4
  br label %484

479:                                              ; preds = %470, %449, %416, %405, %394, %337, %43
  %480 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %481 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %482 = load i32, i32* %8, align 4
  %483 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %480, %struct.scsi_cmnd* %481, i32 %482, i32 255)
  store i32 1, i32* %2, align 4
  br label %484

484:                                              ; preds = %479, %478
  %485 = load i32, i32* %2, align 4
  ret i32 %485
}

declare dso_local i64 @ata_scsi_map_proto(i32) #1

declare dso_local i64 @ata_is_ncq(i64) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i64 @is_multi_taskfile(%struct.ata_taskfile*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
