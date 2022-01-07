; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.nullb_device = type { i64, i64, i32, i64, i32, i32, i32, i64, i32, %struct.nullb* }
%struct.nullb = type { i32, %struct.TYPE_19__*, %struct.TYPE_19__, %struct.TYPE_20__*, i32, i32, %struct.nullb_device*, i32 }
%struct.TYPE_20__ = type { %struct.nullb*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NULL_Q_MQ = common dso_local global i64 0, align 8
@shared_tags = common dso_local global i64 0, align 8
@tag_set = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@NULL_Q_BIO = common dso_local global i64 0, align 8
@null_queue_bio = common dso_local global i32 0, align 4
@NULLB_DEV_FL_THROTTLED = common dso_local global i32 0, align 4
@NULLB_DEV_FL_CACHE = common dso_local global i32 0, align 4
@BLK_ZONED_HM = common dso_local global i32 0, align 4
@QUEUE_FLAG_ZONE_RESETALL = common dso_local global i32 0, align 4
@ELEVATOR_F_ZBD_SEQ_WRITE = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@nullb_indexes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nullb%d\00", align 1
@nullb_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb_device*)* @null_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_add_dev(%struct.nullb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nullb_device*, align 8
  %4 = alloca %struct.nullb*, align 8
  %5 = alloca i32, align 4
  store %struct.nullb_device* %0, %struct.nullb_device** %3, align 8
  %6 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %7 = call i32 @null_validate_conf(%struct.nullb_device* %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %10 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nullb* @kzalloc_node(i32 56, i32 %8, i32 %11)
  store %struct.nullb* %12, %struct.nullb** %4, align 8
  %13 = load %struct.nullb*, %struct.nullb** %4, align 8
  %14 = icmp ne %struct.nullb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %284

18:                                               ; preds = %1
  %19 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %20 = load %struct.nullb*, %struct.nullb** %4, align 8
  %21 = getelementptr inbounds %struct.nullb, %struct.nullb* %20, i32 0, i32 6
  store %struct.nullb_device* %19, %struct.nullb_device** %21, align 8
  %22 = load %struct.nullb*, %struct.nullb** %4, align 8
  %23 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %24 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %23, i32 0, i32 9
  store %struct.nullb* %22, %struct.nullb** %24, align 8
  %25 = load %struct.nullb*, %struct.nullb** %4, align 8
  %26 = getelementptr inbounds %struct.nullb, %struct.nullb* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.nullb*, %struct.nullb** %4, align 8
  %29 = call i32 @setup_queues(%struct.nullb* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %281

33:                                               ; preds = %18
  %34 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %35 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NULL_Q_MQ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  %40 = load i64, i64* @shared_tags, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.nullb*, %struct.nullb** %4, align 8
  %44 = getelementptr inbounds %struct.nullb, %struct.nullb* %43, i32 0, i32 1
  store %struct.TYPE_19__* @tag_set, %struct.TYPE_19__** %44, align 8
  store i32 0, i32* %5, align 4
  br label %55

45:                                               ; preds = %39
  %46 = load %struct.nullb*, %struct.nullb** %4, align 8
  %47 = getelementptr inbounds %struct.nullb, %struct.nullb* %46, i32 0, i32 2
  %48 = load %struct.nullb*, %struct.nullb** %4, align 8
  %49 = getelementptr inbounds %struct.nullb, %struct.nullb* %48, i32 0, i32 1
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %49, align 8
  %50 = load %struct.nullb*, %struct.nullb** %4, align 8
  %51 = load %struct.nullb*, %struct.nullb** %4, align 8
  %52 = getelementptr inbounds %struct.nullb, %struct.nullb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = call i32 @null_init_tag_set(%struct.nullb* %50, %struct.TYPE_19__* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %278

59:                                               ; preds = %55
  %60 = call i32 (...) @null_setup_fault()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %278

63:                                               ; preds = %59
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 5, %64
  %66 = load %struct.nullb*, %struct.nullb** %4, align 8
  %67 = getelementptr inbounds %struct.nullb, %struct.nullb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.nullb*, %struct.nullb** %4, align 8
  %71 = getelementptr inbounds %struct.nullb, %struct.nullb* %70, i32 0, i32 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = call %struct.TYPE_20__* @blk_mq_init_queue(%struct.TYPE_19__* %72)
  %74 = load %struct.nullb*, %struct.nullb** %4, align 8
  %75 = getelementptr inbounds %struct.nullb, %struct.nullb* %74, i32 0, i32 3
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %75, align 8
  %76 = load %struct.nullb*, %struct.nullb** %4, align 8
  %77 = getelementptr inbounds %struct.nullb, %struct.nullb* %76, i32 0, i32 3
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = call i64 @IS_ERR(%struct.TYPE_20__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %259

84:                                               ; preds = %63
  %85 = load %struct.nullb*, %struct.nullb** %4, align 8
  %86 = call i32 @null_init_queues(%struct.nullb* %85)
  br label %121

87:                                               ; preds = %33
  %88 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %89 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NULL_Q_BIO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %87
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %96 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.TYPE_20__* @blk_alloc_queue_node(i32 %94, i32 %97)
  %99 = load %struct.nullb*, %struct.nullb** %4, align 8
  %100 = getelementptr inbounds %struct.nullb, %struct.nullb* %99, i32 0, i32 3
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %100, align 8
  %101 = load %struct.nullb*, %struct.nullb** %4, align 8
  %102 = getelementptr inbounds %struct.nullb, %struct.nullb* %101, i32 0, i32 3
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %93
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %278

108:                                              ; preds = %93
  %109 = load %struct.nullb*, %struct.nullb** %4, align 8
  %110 = getelementptr inbounds %struct.nullb, %struct.nullb* %109, i32 0, i32 3
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = load i32, i32* @null_queue_bio, align 4
  %113 = call i32 @blk_queue_make_request(%struct.TYPE_20__* %111, i32 %112)
  %114 = load %struct.nullb*, %struct.nullb** %4, align 8
  %115 = call i32 @init_driver_queues(%struct.nullb* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %254

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %120, %84
  %122 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %123 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* @NULLB_DEV_FL_THROTTLED, align 4
  %128 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %129 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %128, i32 0, i32 6
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  %131 = load %struct.nullb*, %struct.nullb** %4, align 8
  %132 = call i32 @nullb_setup_bwtimer(%struct.nullb* %131)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %135 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load i32, i32* @NULLB_DEV_FL_CACHE, align 4
  %140 = load %struct.nullb*, %struct.nullb** %4, align 8
  %141 = getelementptr inbounds %struct.nullb, %struct.nullb* %140, i32 0, i32 6
  %142 = load %struct.nullb_device*, %struct.nullb_device** %141, align 8
  %143 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %142, i32 0, i32 6
  %144 = call i32 @set_bit(i32 %139, i32* %143)
  %145 = load %struct.nullb*, %struct.nullb** %4, align 8
  %146 = getelementptr inbounds %struct.nullb, %struct.nullb* %145, i32 0, i32 3
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = call i32 @blk_queue_write_cache(%struct.TYPE_20__* %147, i32 1, i32 1)
  br label %149

149:                                              ; preds = %138, %133
  %150 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %151 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %184

154:                                              ; preds = %149
  %155 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %156 = call i32 @null_zone_init(%struct.nullb_device* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %254

160:                                              ; preds = %154
  %161 = load %struct.nullb*, %struct.nullb** %4, align 8
  %162 = getelementptr inbounds %struct.nullb, %struct.nullb* %161, i32 0, i32 3
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %165 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @blk_queue_chunk_sectors(%struct.TYPE_20__* %163, i32 %166)
  %168 = load i32, i32* @BLK_ZONED_HM, align 4
  %169 = load %struct.nullb*, %struct.nullb** %4, align 8
  %170 = getelementptr inbounds %struct.nullb, %struct.nullb* %169, i32 0, i32 3
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  store i32 %168, i32* %173, align 8
  %174 = load i32, i32* @QUEUE_FLAG_ZONE_RESETALL, align 4
  %175 = load %struct.nullb*, %struct.nullb** %4, align 8
  %176 = getelementptr inbounds %struct.nullb, %struct.nullb* %175, i32 0, i32 3
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = call i32 @blk_queue_flag_set(i32 %174, %struct.TYPE_20__* %177)
  %179 = load %struct.nullb*, %struct.nullb** %4, align 8
  %180 = getelementptr inbounds %struct.nullb, %struct.nullb* %179, i32 0, i32 3
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = load i32, i32* @ELEVATOR_F_ZBD_SEQ_WRITE, align 4
  %183 = call i32 @blk_queue_required_elevator_features(%struct.TYPE_20__* %181, i32 %182)
  br label %184

184:                                              ; preds = %160, %149
  %185 = load %struct.nullb*, %struct.nullb** %4, align 8
  %186 = load %struct.nullb*, %struct.nullb** %4, align 8
  %187 = getelementptr inbounds %struct.nullb, %struct.nullb* %186, i32 0, i32 3
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  store %struct.nullb* %185, %struct.nullb** %189, align 8
  %190 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %191 = load %struct.nullb*, %struct.nullb** %4, align 8
  %192 = getelementptr inbounds %struct.nullb, %struct.nullb* %191, i32 0, i32 3
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = call i32 @blk_queue_flag_set(i32 %190, %struct.TYPE_20__* %193)
  %195 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %196 = load %struct.nullb*, %struct.nullb** %4, align 8
  %197 = getelementptr inbounds %struct.nullb, %struct.nullb* %196, i32 0, i32 3
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = call i32 @blk_queue_flag_clear(i32 %195, %struct.TYPE_20__* %198)
  %200 = call i32 @mutex_lock(i32* @lock)
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i32 @ida_simple_get(i32* @nullb_indexes, i32 0, i32 0, i32 %201)
  %203 = load %struct.nullb*, %struct.nullb** %4, align 8
  %204 = getelementptr inbounds %struct.nullb, %struct.nullb* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.nullb*, %struct.nullb** %4, align 8
  %206 = getelementptr inbounds %struct.nullb, %struct.nullb* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %209 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = call i32 @mutex_unlock(i32* @lock)
  %211 = load %struct.nullb*, %struct.nullb** %4, align 8
  %212 = getelementptr inbounds %struct.nullb, %struct.nullb* %211, i32 0, i32 3
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %215 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @blk_queue_logical_block_size(%struct.TYPE_20__* %213, i32 %216)
  %218 = load %struct.nullb*, %struct.nullb** %4, align 8
  %219 = getelementptr inbounds %struct.nullb, %struct.nullb* %218, i32 0, i32 3
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %219, align 8
  %221 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %222 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @blk_queue_physical_block_size(%struct.TYPE_20__* %220, i32 %223)
  %225 = load %struct.nullb*, %struct.nullb** %4, align 8
  %226 = call i32 @null_config_discard(%struct.nullb* %225)
  %227 = load %struct.nullb*, %struct.nullb** %4, align 8
  %228 = getelementptr inbounds %struct.nullb, %struct.nullb* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.nullb*, %struct.nullb** %4, align 8
  %231 = getelementptr inbounds %struct.nullb, %struct.nullb* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @sprintf(i32 %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %232)
  %234 = load %struct.nullb*, %struct.nullb** %4, align 8
  %235 = call i32 @null_gendisk_register(%struct.nullb* %234)
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %184
  br label %245

239:                                              ; preds = %184
  %240 = call i32 @mutex_lock(i32* @lock)
  %241 = load %struct.nullb*, %struct.nullb** %4, align 8
  %242 = getelementptr inbounds %struct.nullb, %struct.nullb* %241, i32 0, i32 4
  %243 = call i32 @list_add_tail(i32* %242, i32* @nullb_list)
  %244 = call i32 @mutex_unlock(i32* @lock)
  store i32 0, i32* %2, align 4
  br label %286

245:                                              ; preds = %238
  %246 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %247 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %252 = call i32 @null_zone_exit(%struct.nullb_device* %251)
  br label %253

253:                                              ; preds = %250, %245
  br label %254

254:                                              ; preds = %253, %159, %118
  %255 = load %struct.nullb*, %struct.nullb** %4, align 8
  %256 = getelementptr inbounds %struct.nullb, %struct.nullb* %255, i32 0, i32 3
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %256, align 8
  %258 = call i32 @blk_cleanup_queue(%struct.TYPE_20__* %257)
  br label %259

259:                                              ; preds = %254, %81
  %260 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %261 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @NULL_Q_MQ, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %259
  %266 = load %struct.nullb*, %struct.nullb** %4, align 8
  %267 = getelementptr inbounds %struct.nullb, %struct.nullb* %266, i32 0, i32 1
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %267, align 8
  %269 = load %struct.nullb*, %struct.nullb** %4, align 8
  %270 = getelementptr inbounds %struct.nullb, %struct.nullb* %269, i32 0, i32 2
  %271 = icmp eq %struct.TYPE_19__* %268, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load %struct.nullb*, %struct.nullb** %4, align 8
  %274 = getelementptr inbounds %struct.nullb, %struct.nullb* %273, i32 0, i32 1
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %274, align 8
  %276 = call i32 @blk_mq_free_tag_set(%struct.TYPE_19__* %275)
  br label %277

277:                                              ; preds = %272, %265, %259
  br label %278

278:                                              ; preds = %277, %105, %62, %58
  %279 = load %struct.nullb*, %struct.nullb** %4, align 8
  %280 = call i32 @cleanup_queues(%struct.nullb* %279)
  br label %281

281:                                              ; preds = %278, %32
  %282 = load %struct.nullb*, %struct.nullb** %4, align 8
  %283 = call i32 @kfree(%struct.nullb* %282)
  br label %284

284:                                              ; preds = %281, %15
  %285 = load i32, i32* %5, align 4
  store i32 %285, i32* %2, align 4
  br label %286

286:                                              ; preds = %284, %239
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i32 @null_validate_conf(%struct.nullb_device*) #1

declare dso_local %struct.nullb* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setup_queues(%struct.nullb*) #1

declare dso_local i32 @null_init_tag_set(%struct.nullb*, %struct.TYPE_19__*) #1

declare dso_local i32 @null_setup_fault(...) #1

declare dso_local %struct.TYPE_20__* @blk_mq_init_queue(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @null_init_queues(%struct.nullb*) #1

declare dso_local %struct.TYPE_20__* @blk_alloc_queue_node(i32, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @init_driver_queues(%struct.nullb*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nullb_setup_bwtimer(%struct.nullb*) #1

declare dso_local i32 @blk_queue_write_cache(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @null_zone_init(%struct.nullb_device*) #1

declare dso_local i32 @blk_queue_chunk_sectors(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @blk_queue_required_elevator_features(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @null_config_discard(%struct.nullb*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @null_gendisk_register(%struct.nullb*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @null_zone_exit(%struct.nullb_device*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_20__*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_19__*) #1

declare dso_local i32 @cleanup_queues(%struct.nullb*) #1

declare dso_local i32 @kfree(%struct.nullb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
