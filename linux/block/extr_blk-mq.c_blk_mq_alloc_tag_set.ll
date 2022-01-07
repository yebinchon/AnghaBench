; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32, i32, i32, i32*, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BLK_MQ_MAX_DEPTH = common dso_local global i32 0, align 4
@BLK_MQ_UNIQUE_TAG_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BLK_MQ_TAG_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"blk-mq: reduced tag depth to %u\0A\00", align 1
@HCTX_MAX_TYPES = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  %6 = load i32, i32* @BLK_MQ_MAX_DEPTH, align 4
  %7 = load i32, i32* @BLK_MQ_UNIQUE_TAG_BITS, align 4
  %8 = shl i32 1, %7
  %9 = icmp sgt i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %257

19:                                               ; preds = %1
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %257

27:                                               ; preds = %19
  %28 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLK_MQ_TAG_MIN, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %257

40:                                               ; preds = %27
  %41 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %42 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %41, i32 0, i32 9
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %257

50:                                               ; preds = %40
  %51 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %52 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %51, i32 0, i32 9
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %60 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %59, i32 0, i32 9
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = xor i32 %58, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %257

72:                                               ; preds = %50
  %73 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %74 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BLK_MQ_MAX_DEPTH, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* @BLK_MQ_MAX_DEPTH, align 4
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @BLK_MQ_MAX_DEPTH, align 4
  %82 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %83 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %86 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %91 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  br label %102

92:                                               ; preds = %84
  %93 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %94 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HCTX_MAX_TYPES, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %257

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %89
  %103 = call i64 (...) @is_kdump_kernel()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %107 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %109 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  %110 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %111 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @min(i32 64, i32 %112)
  %114 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %115 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %102
  %117 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %118 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %123 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @nr_cpu_ids, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @nr_cpu_ids, align 4
  %129 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %130 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %121, %116
  %132 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %133 = call i32 @nr_hw_queues(%struct.blk_mq_tag_set* %132)
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %136 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @kcalloc_node(i32 %133, i32 8, i32 %134, i32 %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %141 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %143 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %131
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %257

149:                                              ; preds = %131
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %200, %149
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %155 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %152
  %159 = load i32, i32* @nr_cpu_ids, align 4
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %162 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @kcalloc_node(i32 %159, i32 4, i32 %160, i32 %163)
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %167 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %166, i32 0, i32 5
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32* %165, i32** %172, align 8
  %173 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %174 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %173, i32 0, i32 5
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %158
  br label %222

183:                                              ; preds = %158
  %184 = call i64 (...) @is_kdump_kernel()
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %191

187:                                              ; preds = %183
  %188 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %189 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  br label %191

191:                                              ; preds = %187, %186
  %192 = phi i32 [ 1, %186 ], [ %190, %187 ]
  %193 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %194 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %193, i32 0, i32 5
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i32 %192, i32* %199, align 8
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %4, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %4, align 4
  br label %152

203:                                              ; preds = %152
  %204 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %205 = call i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set* %204)
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %222

209:                                              ; preds = %203
  %210 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %211 = call i32 @blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set* %210)
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %222

215:                                              ; preds = %209
  %216 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %217 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %216, i32 0, i32 7
  %218 = call i32 @mutex_init(i32* %217)
  %219 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %220 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %219, i32 0, i32 6
  %221 = call i32 @INIT_LIST_HEAD(i32* %220)
  store i32 0, i32* %2, align 4
  br label %257

222:                                              ; preds = %214, %208, %182
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %246, %222
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %226 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %223
  %230 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %231 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %230, i32 0, i32 5
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @kfree(i32* %237)
  %239 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %240 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %239, i32 0, i32 5
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  store i32* null, i32** %245, align 8
  br label %246

246:                                              ; preds = %229
  %247 = load i32, i32* %4, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %4, align 4
  br label %223

249:                                              ; preds = %223
  %250 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %251 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @kfree(i32* %252)
  %254 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %255 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %254, i32 0, i32 4
  store i32* null, i32** %255, align 8
  %256 = load i32, i32* %5, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %249, %215, %146, %98, %69, %47, %37, %24, %16
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @nr_hw_queues(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @blk_mq_update_queue_map(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @blk_mq_alloc_rq_maps(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
