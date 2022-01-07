; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_build_rw_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_build_rw_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ATA_PROT_NCQ = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_WRITE = common dso_local global i32 0, align 4
@ATA_CMD_FPDMA_READ = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_FUA = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_PRIO = common dso_local global i32 0, align 4
@IOPRIO_CLASS_RT = common dso_local global i32 0, align 4
@ATA_PRIO_HIGH = common dso_local global i32 0, align 4
@ATA_SHIFT_PRIO = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"block %u track %u cyl %u head %u sect %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_build_rw_tf(%struct.ata_taskfile* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_taskfile*, align 8
  %10 = alloca %struct.ata_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %9, align 8
  store %struct.ata_device* %1, %struct.ata_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %21 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %29 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %33 = call i64 @ata_ncq_enabled(%struct.ata_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %150

35:                                               ; preds = %7
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @ata_tag_internal(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %150, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @lba_48_ok(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %341

47:                                               ; preds = %39
  %48 = load i32, i32* @ATA_PROT_NCQ, align 4
  %49 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %52 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %55 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %59 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32, i32* @ATA_CMD_FPDMA_WRITE, align 4
  %66 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %67 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %47
  %69 = load i32, i32* @ATA_CMD_FPDMA_READ, align 4
  %70 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %71 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %73, 3
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %81 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 255
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = ashr i32 %86, 40
  %88 = and i32 %87, 255
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 32
  %93 = and i32 %92, 255
  %94 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 24
  %98 = and i32 %97, 255
  %99 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %100 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = ashr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %110 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, 255
  %113 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %114 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @ATA_LBA, align 4
  %116 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %117 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 4
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATA_TFLAG_FUA, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %72
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, 128
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %72
  %130 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %131 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ATA_DFLAG_NCQ_PRIO, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @IOPRIO_CLASS_RT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, i32* @ATA_PRIO_HIGH, align 4
  %142 = load i32, i32* @ATA_SHIFT_PRIO, align 4
  %143 = shl i32 %141, %142
  %144 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %145 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %144, i32 0, i32 11
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %136
  br label %149

149:                                              ; preds = %148, %129
  br label %340

150:                                              ; preds = %35, %7
  %151 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %152 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %255

157:                                              ; preds = %150
  %158 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %159 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %160 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @lba_28_ok(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %157
  %168 = load i32, i32* %11, align 4
  %169 = ashr i32 %168, 24
  %170 = and i32 %169, 15
  %171 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %172 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %220

175:                                              ; preds = %157
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i64 @lba_48_ok(i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %216

180:                                              ; preds = %175
  %181 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %182 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* @ERANGE, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %8, align 4
  br label %341

190:                                              ; preds = %180
  %191 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %192 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %193 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %12, align 4
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 255
  %199 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %200 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %11, align 4
  %202 = ashr i32 %201, 40
  %203 = and i32 %202, 255
  %204 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %205 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %11, align 4
  %207 = ashr i32 %206, 32
  %208 = and i32 %207, 255
  %209 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %210 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = ashr i32 %211, 24
  %213 = and i32 %212, 255
  %214 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %215 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 4
  br label %219

216:                                              ; preds = %175
  %217 = load i32, i32* @ERANGE, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %8, align 4
  br label %341

219:                                              ; preds = %190
  br label %220

220:                                              ; preds = %219, %167
  %221 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %222 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %223 = call i64 @ata_rwcmd_protocol(%struct.ata_taskfile* %221, %struct.ata_device* %222)
  %224 = icmp slt i64 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  br label %341

231:                                              ; preds = %220
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %232, 255
  %234 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %235 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %11, align 4
  %237 = ashr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %240 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %239, i32 0, i32 7
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %11, align 4
  %242 = ashr i32 %241, 8
  %243 = and i32 %242, 255
  %244 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %245 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %244, i32 0, i32 8
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = and i32 %246, 255
  %248 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %249 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %248, i32 0, i32 9
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @ATA_LBA, align 4
  %251 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %252 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 4
  br label %339

255:                                              ; preds = %150
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i64 @lba_28_ok(i32 %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* @ERANGE, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %8, align 4
  br label %341

263:                                              ; preds = %255
  %264 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %265 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %266 = call i64 @ata_rwcmd_protocol(%struct.ata_taskfile* %264, %struct.ata_device* %265)
  %267 = icmp slt i64 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i64 @unlikely(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %8, align 4
  br label %341

274:                                              ; preds = %263
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %277 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sdiv i32 %275, %278
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %282 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = sdiv i32 %280, %283
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %19, align 4
  %286 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %287 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = srem i32 %285, %288
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %292 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = srem i32 %290, %293
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %296, i32 %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %18, align 4
  %303 = ashr i32 %302, 16
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %316, label %305

305:                                              ; preds = %274
  %306 = load i32, i32* %17, align 4
  %307 = ashr i32 %306, 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %305
  %310 = load i32, i32* %16, align 4
  %311 = ashr i32 %310, 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %309
  %314 = load i32, i32* %16, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %313, %309, %305, %274
  %317 = load i32, i32* @ERANGE, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %8, align 4
  br label %341

319:                                              ; preds = %313
  %320 = load i32, i32* %12, align 4
  %321 = and i32 %320, 255
  %322 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %323 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  %324 = load i32, i32* %16, align 4
  %325 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %326 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %325, i32 0, i32 9
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %329 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %328, i32 0, i32 8
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %18, align 4
  %331 = ashr i32 %330, 8
  %332 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %333 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %332, i32 0, i32 7
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %17, align 4
  %335 = load %struct.ata_taskfile*, %struct.ata_taskfile** %9, align 8
  %336 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %319, %231
  br label %340

340:                                              ; preds = %339, %149
  store i32 0, i32* %8, align 4
  br label %341

341:                                              ; preds = %340, %316, %271, %260, %228, %216, %187, %44
  %342 = load i32, i32* %8, align 4
  ret i32 %342
}

declare dso_local i64 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i32 @ata_tag_internal(i32) #1

declare dso_local i64 @lba_48_ok(i32, i32) #1

declare dso_local i64 @lba_28_ok(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ata_rwcmd_protocol(%struct.ata_taskfile*, %struct.ata_device*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
