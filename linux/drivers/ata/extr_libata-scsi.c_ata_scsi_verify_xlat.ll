; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_verify_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_verify_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.ata_device = type { i64, i32, i64, i64 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i32 }
%struct.scsi_cmnd = type { i64*, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@VERIFY = common dso_local global i64 0, align 8
@VERIFY_16 = common dso_local global i64 0, align 8
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY = common dso_local global i8* null, align 8
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY_EXT = common dso_local global i8* null, align 8
@ATA_LBA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"block %u track %u cyl %u head %u sect %u\0A\00", align 1
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_verify_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_verify_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 2
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %17, align 8
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %4, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 1
  store %struct.ata_taskfile* %20, %struct.ata_taskfile** %5, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 0
  %23 = load %struct.ata_device*, %struct.ata_device** %22, align 8
  store %struct.ata_device* %23, %struct.ata_device** %6, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 0
  %26 = load %struct.ata_device*, %struct.ata_device** %25, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %8, align 8
  %32 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %33 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %36 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @ATA_PROT_NODATA, align 4
  %40 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %41 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VERIFY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 9, i32* %11, align 4
  br label %258

53:                                               ; preds = %47
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @scsi_10_lba_len(i64* %54, i64* %9, i64* %10)
  br label %73

56:                                               ; preds = %1
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VERIFY_16, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 15, i32* %11, align 4
  br label %258

68:                                               ; preds = %62
  %69 = load i64*, i64** %8, align 8
  %70 = call i32 @scsi_16_lba_len(i64* %69, i64* %9, i64* %10)
  br label %72

71:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %258

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  br label %272

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %265

82:                                               ; preds = %77
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* %7, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %265

89:                                               ; preds = %82
  %90 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %91 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %185

96:                                               ; preds = %89
  %97 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @lba_28_ok(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %96
  %107 = load i8*, i8** @ATA_CMD_VERIFY, align 8
  %108 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %109 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %9, align 8
  %111 = ashr i64 %110, 24
  %112 = and i64 %111, 15
  %113 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %114 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = or i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %161

117:                                              ; preds = %96
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @lba_48_ok(i64 %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %117
  %123 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %124 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  br label %265

130:                                              ; preds = %122
  %131 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %132 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %133 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i8*, i8** @ATA_CMD_VERIFY_EXT, align 8
  %137 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %138 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* %10, align 8
  %140 = ashr i64 %139, 8
  %141 = and i64 %140, 255
  %142 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %143 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %142, i32 0, i32 10
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = ashr i64 %144, 40
  %146 = and i64 %145, 255
  %147 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %148 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %147, i32 0, i32 9
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %9, align 8
  %150 = ashr i64 %149, 32
  %151 = and i64 %150, 255
  %152 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %153 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %152, i32 0, i32 8
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %9, align 8
  %155 = ashr i64 %154, 24
  %156 = and i64 %155, 255
  %157 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %158 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %157, i32 0, i32 7
  store i64 %156, i64* %158, align 8
  br label %160

159:                                              ; preds = %117
  br label %265

160:                                              ; preds = %130
  br label %161

161:                                              ; preds = %160, %106
  %162 = load i64, i64* %10, align 8
  %163 = and i64 %162, 255
  %164 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %165 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %164, i32 0, i32 5
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %9, align 8
  %167 = ashr i64 %166, 16
  %168 = and i64 %167, 255
  %169 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %170 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %9, align 8
  %172 = ashr i64 %171, 8
  %173 = and i64 %172, 255
  %174 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %175 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %174, i32 0, i32 3
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %9, align 8
  %177 = and i64 %176, 255
  %178 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %179 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* @ATA_LBA, align 8
  %181 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %182 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = or i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %257

185:                                              ; preds = %89
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = call i64 @lba_28_ok(i64 %186, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  br label %265

191:                                              ; preds = %185
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %194 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = sdiv i64 %192, %195
  store i64 %196, i64* %15, align 8
  %197 = load i64, i64* %15, align 8
  %198 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %199 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = sdiv i64 %197, %200
  store i64 %201, i64* %14, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %204 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = srem i64 %202, %205
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* %9, align 8
  %208 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %209 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = srem i64 %207, %210
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %12, align 8
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* %15, align 8
  %215 = load i64, i64* %14, align 8
  %216 = load i64, i64* %13, align 8
  %217 = load i64, i64* %12, align 8
  %218 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %14, align 8
  %220 = ashr i64 %219, 16
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %233, label %222

222:                                              ; preds = %191
  %223 = load i64, i64* %13, align 8
  %224 = ashr i64 %223, 4
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %222
  %227 = load i64, i64* %12, align 8
  %228 = ashr i64 %227, 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load i64, i64* %12, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %230, %226, %222, %191
  br label %265

234:                                              ; preds = %230
  %235 = load i8*, i8** @ATA_CMD_VERIFY, align 8
  %236 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %237 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %236, i32 0, i32 6
  store i8* %235, i8** %237, align 8
  %238 = load i64, i64* %10, align 8
  %239 = and i64 %238, 255
  %240 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %241 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %240, i32 0, i32 5
  store i64 %239, i64* %241, align 8
  %242 = load i64, i64* %12, align 8
  %243 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %244 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %243, i32 0, i32 4
  store i64 %242, i64* %244, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %247 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  %248 = load i64, i64* %14, align 8
  %249 = ashr i64 %248, 8
  %250 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %251 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %250, i32 0, i32 2
  store i64 %249, i64* %251, align 8
  %252 = load i64, i64* %13, align 8
  %253 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %254 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = or i64 %255, %252
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %234, %161
  store i32 0, i32* %2, align 4
  br label %276

258:                                              ; preds = %71, %67, %52
  %259 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %260 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %259, i32 0, i32 0
  %261 = load %struct.ata_device*, %struct.ata_device** %260, align 8
  %262 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @ata_scsi_set_invalid_field(%struct.ata_device* %261, %struct.scsi_cmnd* %262, i32 %263, i32 255)
  store i32 1, i32* %2, align 4
  br label %276

265:                                              ; preds = %233, %190, %159, %129, %88, %81
  %266 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %267 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %266, i32 0, i32 0
  %268 = load %struct.ata_device*, %struct.ata_device** %267, align 8
  %269 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %270 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %271 = call i32 @ata_scsi_set_sense(%struct.ata_device* %268, %struct.scsi_cmnd* %269, i32 %270, i32 33, i32 0)
  store i32 1, i32* %2, align 4
  br label %276

272:                                              ; preds = %76
  %273 = load i32, i32* @SAM_STAT_GOOD, align 4
  %274 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %275 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  store i32 1, i32* %2, align 4
  br label %276

276:                                              ; preds = %272, %265, %258, %257
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i32 @scsi_10_lba_len(i64*, i64*, i64*) #1

declare dso_local i32 @scsi_16_lba_len(i64*, i64*, i64*) #1

declare dso_local i64 @lba_28_ok(i64, i64) #1

declare dso_local i64 @lba_48_ok(i64, i64) #1

declare dso_local i32 @DPRINTK(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ata_scsi_set_invalid_field(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.ata_device*, %struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
