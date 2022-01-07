; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_gen_passthru_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_gen_passthru_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_4__*, i64, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.scsi_cmnd = type { i8*, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_gen_passthru_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_gen_passthru_sense(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 3
  store %struct.ata_taskfile* %16, %struct.ata_taskfile** %4, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %33 = call i32 @memset(i8* %31, i32 0, i32 %32)
  %34 = load i32, i32* @DRIVER_SENSE, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %1
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATA_BUSY, align 4
  %49 = load i32, i32* @ATA_DF, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ATA_ERR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ATA_DRQ, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %44, %1
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %64 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ata_to_sense_error(i32 %62, i32 %65, i8 zeroext %68, i32* %8, i32* %9, i32* %10, i32 %69)
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %72 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ata_scsi_set_sense(i32 %73, %struct.scsi_cmnd* %74, i32 %75, i32 %76, i32 %77)
  br label %85

79:                                               ; preds = %44
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @RECOVERED_ERROR, align 4
  %84 = call i32 @scsi_build_sense_buffer(i32 1, i8* %82, i32 %83, i32 0, i32 29)
  br label %85

85:                                               ; preds = %79, %57
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 127
  %93 = icmp sge i32 %92, 114
  br i1 %93, label %94, label %200

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 7
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 8
  %102 = call i64 @scsi_sense_desc_find(i8* %99, i32 %101, i32 9)
  %103 = inttoptr i64 %102 to i8*
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 14
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %290

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 14
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 7
  store i8 %115, i8* %117, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %112, %94
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 9, i8* %125, align 1
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 12, i8* %127, align 1
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8 0, i8* %129, align 1
  %130 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %131 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %130, i32 0, i32 1
  %132 = load i8, i8* %131, align 4
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  store i8 %132, i8* %134, align 1
  %135 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %136 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 5
  store i8 %137, i8* %139, align 1
  %140 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %141 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %140, i32 0, i32 3
  %142 = load i8, i8* %141, align 2
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 7
  store i8 %142, i8* %144, align 1
  %145 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %146 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %145, i32 0, i32 4
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 9
  store i8 %147, i8* %149, align 1
  %150 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %151 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %150, i32 0, i32 5
  %152 = load i8, i8* %151, align 4
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 11
  store i8 %152, i8* %154, align 1
  %155 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %156 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %155, i32 0, i32 6
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 12
  store i8 %157, i8* %159, align 1
  %160 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %161 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 13
  store i8 %163, i8* %165, align 1
  %166 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %167 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %123
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, 1
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %174, align 1
  %179 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %180 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %179, i32 0, i32 8
  %181 = load i8, i8* %180, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  store i8 %181, i8* %183, align 1
  %184 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %185 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %184, i32 0, i32 9
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 6
  store i8 %186, i8* %188, align 1
  %189 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %190 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %189, i32 0, i32 10
  %191 = load i8, i8* %190, align 2
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 8
  store i8 %191, i8* %193, align 1
  %194 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %195 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %194, i32 0, i32 11
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 10
  store i8 %196, i8* %198, align 1
  br label %199

199:                                              ; preds = %172, %123
  br label %290

200:                                              ; preds = %85
  %201 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %202 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %201, i32 0, i32 1
  %203 = load i8, i8* %202, align 4
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  store i8 %203, i8* %205, align 1
  %206 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %207 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = trunc i32 %208 to i8
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  store i8 %209, i8* %211, align 1
  %212 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %213 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %212, i32 0, i32 6
  %214 = load i8, i8* %213, align 1
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  store i8 %214, i8* %216, align 1
  %217 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %218 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %217, i32 0, i32 2
  %219 = load i8, i8* %218, align 1
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 3
  store i8 %219, i8* %221, align 1
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 7
  store i8 0, i8* %223, align 1
  %224 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %225 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %274

230:                                              ; preds = %200
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 8
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %234, 128
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %232, align 1
  %237 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %238 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %237, i32 0, i32 8
  %239 = load i8, i8* %238, align 4
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load i8*, i8** %6, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 8
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = or i32 %245, 64
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %243, align 1
  br label %248

248:                                              ; preds = %241, %230
  %249 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %250 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %249, i32 0, i32 9
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %266, label %254

254:                                              ; preds = %248
  %255 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %256 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %255, i32 0, i32 10
  %257 = load i8, i8* %256, align 2
  %258 = zext i8 %257 to i32
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %262 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %261, i32 0, i32 11
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %260, %254, %248
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = or i32 %270, 32
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %268, align 1
  br label %273

273:                                              ; preds = %266, %260
  br label %274

274:                                              ; preds = %273, %200
  %275 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %276 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %275, i32 0, i32 3
  %277 = load i8, i8* %276, align 2
  %278 = load i8*, i8** %6, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 9
  store i8 %277, i8* %279, align 1
  %280 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %281 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %280, i32 0, i32 4
  %282 = load i8, i8* %281, align 1
  %283 = load i8*, i8** %6, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 10
  store i8 %282, i8* %284, align 1
  %285 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %286 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %285, i32 0, i32 5
  %287 = load i8, i8* %286, align 4
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 11
  store i8 %287, i8* %289, align 1
  br label %290

290:                                              ; preds = %111, %274, %199
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ata_to_sense_error(i32, i32, i8 zeroext, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ata_scsi_set_sense(i32, %struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @scsi_sense_desc_find(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
