; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_process_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_process_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_page = type { i64, i64, %struct.bio*, %struct.TYPE_5__, %struct.mm_dma_desc* }
%struct.bio = type { %struct.bio*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mm_dma_desc = type { i32, i32, i32, i32 }
%struct.cardinfo = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.mm_page* }
%struct.TYPE_4__ = type { i32 }
%struct.bio_vec = type { i32 }

@DMASCR_DMA_COMPLETE = common dso_local global i32 0, align 4
@DMASCR_TRANSFER_READ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMASCR_HARD_ERROR = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I/O error on sector %d/%d\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"memory now initialised\0A\00", align 1
@MEMORY_INITIALIZED = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_LED_ON_TRANSFER = common dso_local global i32 0, align 4
@LED_REMOVE = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"do some more\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @process_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_page(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_page*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.cardinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.mm_dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_vec, align 4
  %12 = alloca %struct.bio_vec, align 4
  %13 = alloca %struct.bio*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.bio* null, %struct.bio** %4, align 8
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.cardinfo*
  store %struct.cardinfo* %15, %struct.cardinfo** %5, align 8
  %16 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %17 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %20 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %19, i32 0, i32 4
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %23 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %257

27:                                               ; preds = %1
  %28 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %29 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %28, i32 0, i32 7
  %30 = load %struct.mm_page*, %struct.mm_page** %29, align 8
  %31 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %32 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %30, i64 %33
  store %struct.mm_page* %34, %struct.mm_page** %3, align 8
  br label %35

35:                                               ; preds = %216, %27
  %36 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %37 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %40 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %217

43:                                               ; preds = %35
  %44 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %45 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %44, i32 0, i32 2
  %46 = load %struct.bio*, %struct.bio** %45, align 8
  store %struct.bio* %46, %struct.bio** %7, align 8
  %47 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %48 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %47, i32 0, i32 4
  %49 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %48, align 8
  %50 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %51 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %49, i64 %52
  store %struct.mm_dma_desc* %53, %struct.mm_dma_desc** %8, align 8
  %54 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %55 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @DMASCR_DMA_COMPLETE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %43
  %65 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %66 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.bio*, %struct.bio** %7, align 8
  %70 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %71 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bio_iter_iovec(%struct.bio* %69, i32 %73)
  %75 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = bitcast %struct.bio_vec* %11 to i8*
  %77 = bitcast %struct.bio_vec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load %struct.bio*, %struct.bio** %7, align 8
  %79 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %80 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bio_advance_iter(%struct.bio* %78, %struct.TYPE_5__* %80, i32 %82)
  %84 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %85 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %64
  %90 = load %struct.bio*, %struct.bio** %7, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load %struct.bio*, %struct.bio** %91, align 8
  %93 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %94 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %93, i32 0, i32 2
  store %struct.bio* %92, %struct.bio** %94, align 8
  %95 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %96 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %95, i32 0, i32 2
  %97 = load %struct.bio*, %struct.bio** %96, align 8
  %98 = icmp ne %struct.bio* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %101 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %100, i32 0, i32 3
  %102 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %103 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %102, i32 0, i32 2
  %104 = load %struct.bio*, %struct.bio** %103, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 2
  %106 = bitcast %struct.TYPE_5__* %101 to i8*
  %107 = bitcast %struct.TYPE_5__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 4, i1 false)
  br label %108

108:                                              ; preds = %99, %89
  br label %109

109:                                              ; preds = %108, %64
  %110 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %111 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %110, i32 0, i32 6
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %115 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @DMASCR_TRANSFER_READ, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %127

125:                                              ; preds = %109
  %126 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = call i32 @dma_unmap_page(i32* %113, i32 %116, i32 %118, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @DMASCR_HARD_ERROR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %127
  %135 = load i32, i32* @BLK_STS_IOERR, align 4
  %136 = load %struct.bio*, %struct.bio** %7, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @KERN_WARNING, align 4
  %139 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %140 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %139, i32 0, i32 6
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %144 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le32_to_cpu(i32 %145)
  %147 = ashr i32 %146, 9
  %148 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %149 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le32_to_cpu(i32 %150)
  %152 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %138, i32* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %151)
  %153 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @dump_dmastat(%struct.cardinfo* %153, i32 %154)
  br label %201

156:                                              ; preds = %127
  %157 = load %struct.bio*, %struct.bio** %7, align 8
  %158 = call i32 @bio_op(%struct.bio* %157)
  %159 = call i64 @op_is_write(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %200

161:                                              ; preds = %156
  %162 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %163 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  %166 = ashr i32 %165, 9
  %167 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %168 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %200

171:                                              ; preds = %161
  %172 = load %struct.mm_dma_desc*, %struct.mm_dma_desc** %8, align 8
  %173 = getelementptr inbounds %struct.mm_dma_desc, %struct.mm_dma_desc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le32_to_cpu(i32 %174)
  %176 = ashr i32 %175, 9
  %177 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %178 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %182 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 1
  %185 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %186 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %171
  %190 = load i32, i32* @KERN_INFO, align 4
  %191 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %192 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %191, i32 0, i32 6
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %190, i32* %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %196 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %197 = load i32, i32* @MEMORY_INITIALIZED, align 4
  %198 = call i32 @set_userbit(%struct.cardinfo* %196, i32 %197, i32 1)
  br label %199

199:                                              ; preds = %189, %171
  br label %200

200:                                              ; preds = %199, %161, %156
  br label %201

201:                                              ; preds = %200, %134
  %202 = load %struct.bio*, %struct.bio** %7, align 8
  %203 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %204 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %203, i32 0, i32 2
  %205 = load %struct.bio*, %struct.bio** %204, align 8
  %206 = icmp ne %struct.bio* %202, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load %struct.bio*, %struct.bio** %4, align 8
  %209 = load %struct.bio*, %struct.bio** %7, align 8
  %210 = getelementptr inbounds %struct.bio, %struct.bio* %209, i32 0, i32 0
  store %struct.bio* %208, %struct.bio** %210, align 8
  %211 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %211, %struct.bio** %4, align 8
  br label %212

212:                                              ; preds = %207, %201
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %217

216:                                              ; preds = %212
  br label %35

217:                                              ; preds = %215, %35
  %218 = load i32, i32* @debug, align 4
  %219 = load i32, i32* @DEBUG_LED_ON_TRANSFER, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %224 = load i32, i32* @LED_REMOVE, align 4
  %225 = load i32, i32* @LED_OFF, align 4
  %226 = call i32 @set_led(%struct.cardinfo* %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %229 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %234 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %233, i32 0, i32 5
  store i64 0, i64* %234, align 8
  %235 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %236 = call i32 @check_batteries(%struct.cardinfo* %235)
  br label %237

237:                                              ; preds = %232, %227
  %238 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %239 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %242 = getelementptr inbounds %struct.mm_page, %struct.mm_page* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp uge i64 %240, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = load %struct.mm_page*, %struct.mm_page** %3, align 8
  %247 = call i32 @reset_page(%struct.mm_page* %246)
  %248 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %249 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %248, i32 0, i32 1
  store i64 -1, i64* %249, align 8
  %250 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %251 = call i32 @activate(%struct.cardinfo* %250)
  br label %256

252:                                              ; preds = %237
  %253 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %254 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %255 = call i32 @mm_start_io(%struct.cardinfo* %254)
  br label %256

256:                                              ; preds = %252, %245
  br label %257

257:                                              ; preds = %256, %26
  %258 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %259 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %258, i32 0, i32 4
  %260 = call i32 @spin_unlock(i32* %259)
  br label %261

261:                                              ; preds = %264, %257
  %262 = load %struct.bio*, %struct.bio** %4, align 8
  %263 = icmp ne %struct.bio* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %265, %struct.bio** %13, align 8
  %266 = load %struct.bio*, %struct.bio** %13, align 8
  %267 = getelementptr inbounds %struct.bio, %struct.bio* %266, i32 0, i32 0
  %268 = load %struct.bio*, %struct.bio** %267, align 8
  store %struct.bio* %268, %struct.bio** %4, align 8
  %269 = load %struct.bio*, %struct.bio** %13, align 8
  %270 = getelementptr inbounds %struct.bio, %struct.bio* %269, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %270, align 8
  %271 = load %struct.bio*, %struct.bio** %13, align 8
  %272 = call i32 @bio_endio(%struct.bio* %271)
  br label %261

273:                                              ; preds = %261
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bio_iter_iovec(%struct.bio*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bio_advance_iter(%struct.bio*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i32 @dump_dmastat(%struct.cardinfo*, i32) #1

declare dso_local i64 @op_is_write(i32) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @set_userbit(%struct.cardinfo*, i32, i32) #1

declare dso_local i32 @set_led(%struct.cardinfo*, i32, i32) #1

declare dso_local i32 @check_batteries(%struct.cardinfo*) #1

declare dso_local i32 @reset_page(%struct.mm_page*) #1

declare dso_local i32 @activate(%struct.cardinfo*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mm_start_io(%struct.cardinfo*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
