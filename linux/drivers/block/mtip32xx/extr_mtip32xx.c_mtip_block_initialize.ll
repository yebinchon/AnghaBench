; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_28__*, %struct.TYPE_29__, %struct.TYPE_27__*, i32*, %struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, %struct.driver_data*, i32*, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, %struct.driver_data*, i32, i32, i32, i32* }
%struct.TYPE_27__ = type { %struct.driver_data* }
%struct.TYPE_26__ = type { i32 }
%struct.kobject = type { i32 }
%struct.TYPE_30__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTIP_MAX_MINORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate gendisk structure\0A\00", align 1
@rssd_index_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"rssd\00", align 1
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@mtip_block_ops = common dso_local global i32 0, align 4
@mtip_mq_ops = common dso_local global i32 0, align 4
@MTIP_MAX_COMMAND_SLOTS = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@MTIP_NCQ_CMD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to allocate request queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Protocol layer initialization failed\0A\00", align 1
@MTIP_FTL_REBUILD_MAGIC = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@MTIP_MAX_SG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not read drive capacity\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MTIP_DDF_INIT_DONE_BIT = common dso_local global i32 0, align 4
@mtip_service_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"mtip_svc_thd_%02d\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"service thread failed to start\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_block_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_initialize(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kobject*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %12 = icmp ne %struct.TYPE_28__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %174

14:                                               ; preds = %1
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = call i64 @mtip_hw_init(%struct.driver_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %358

21:                                               ; preds = %14
  %22 = load i32, i32* @MTIP_MAX_MINORS, align 4
  %23 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %24 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_28__* @alloc_disk_node(i32 %22, i32 %25)
  %27 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 1
  store %struct.TYPE_28__* %26, %struct.TYPE_28__** %28, align 8
  %29 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %30 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = icmp eq %struct.TYPE_28__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 6
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %355

41:                                               ; preds = %21
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @ida_alloc(i32* @rssd_index_ida, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %350

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %51 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DISK_NAME_LEN, align 4
  %56 = call i32 @rssd_disk_name_format(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %347

60:                                               ; preds = %47
  %61 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %65 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 5
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MTIP_MAX_MINORS, align 4
  %70 = mul i32 %68, %69
  %71 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %72 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* @MTIP_MAX_MINORS, align 4
  %76 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %77 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %81 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 4
  store i32* @mtip_block_ops, i32** %83, align 8
  %84 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %85 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 3
  store %struct.driver_data* %84, %struct.driver_data** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %91 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %93 = call i32 @mtip_hw_debugfs_init(%struct.driver_data* %92)
  %94 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %95 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %94, i32 0, i32 2
  %96 = call i32 @memset(%struct.TYPE_29__* %95, i32 0, i32 48)
  %97 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %98 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 8
  store i32* @mtip_mq_ops, i32** %99, align 8
  %100 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %101 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i32, i32* @MTIP_MAX_COMMAND_SLOTS, align 4
  %104 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %105 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 7
  store i32 %103, i32* %106, align 8
  %107 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %108 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %111 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 2
  store i32 4, i32* %112, align 8
  %113 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %114 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %117 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 6
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %120 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %121 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 5
  store i32 %119, i32* %122, align 8
  %123 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %124 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %125 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 4
  store %struct.driver_data* %123, %struct.driver_data** %126, align 8
  %127 = load i32, i32* @MTIP_NCQ_CMD_TIMEOUT_MS, align 4
  %128 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %129 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %132 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %131, i32 0, i32 2
  %133 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_29__* %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %60
  %137 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %138 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %137, i32 0, i32 6
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %344

142:                                              ; preds = %60
  %143 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %144 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %143, i32 0, i32 2
  %145 = call %struct.TYPE_27__* @blk_mq_init_queue(%struct.TYPE_29__* %144)
  %146 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %147 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %146, i32 0, i32 3
  store %struct.TYPE_27__* %145, %struct.TYPE_27__** %147, align 8
  %148 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %149 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %148, i32 0, i32 3
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %149, align 8
  %151 = call i64 @IS_ERR(%struct.TYPE_27__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %142
  %154 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %155 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %154, i32 0, i32 6
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %340

161:                                              ; preds = %142
  %162 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %163 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %162, i32 0, i32 3
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %163, align 8
  %165 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %166 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  store %struct.TYPE_27__* %164, %struct.TYPE_27__** %168, align 8
  %169 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %170 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %171 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %170, i32 0, i32 3
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  store %struct.driver_data* %169, %struct.driver_data** %173, align 8
  br label %174

174:                                              ; preds = %161, %13
  %175 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %176 = call i32 @mtip_hw_get_identify(%struct.driver_data* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %181 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %180, i32 0, i32 6
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = call i32 @dev_err(i32* %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  br label %335

187:                                              ; preds = %174
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @MTIP_FTL_REBUILD_MAGIC, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %286

192:                                              ; preds = %187
  %193 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %194 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %195 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %194, i32 0, i32 3
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %195, align 8
  %197 = call i32 @blk_queue_flag_set(i32 %193, %struct.TYPE_27__* %196)
  %198 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %199 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %200 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %199, i32 0, i32 3
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = call i32 @blk_queue_flag_clear(i32 %198, %struct.TYPE_27__* %201)
  %203 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %204 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %203, i32 0, i32 3
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %204, align 8
  %206 = load i32, i32* @MTIP_MAX_SG, align 4
  %207 = call i32 @blk_queue_max_segments(%struct.TYPE_27__* %205, i32 %206)
  %208 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %209 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %208, i32 0, i32 3
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = call i32 @blk_queue_physical_block_size(%struct.TYPE_27__* %210, i32 4096)
  %212 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %213 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %212, i32 0, i32 3
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_27__* %214, i32 65535)
  %216 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %217 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %216, i32 0, i32 3
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %217, align 8
  %219 = call i32 @blk_queue_max_segment_size(%struct.TYPE_27__* %218, i32 4194304)
  %220 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %221 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %220, i32 0, i32 6
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  %224 = call i32 @dma_set_max_seg_size(i32* %223, i32 4194304)
  %225 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %226 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %225, i32 0, i32 3
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %226, align 8
  %228 = call i32 @blk_queue_io_min(%struct.TYPE_27__* %227, i32 4096)
  %229 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %230 = call i32 @mtip_hw_get_capacity(%struct.driver_data* %229, i32* %6)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %192
  %233 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %234 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %233, i32 0, i32 6
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = call i32 @dev_warn(i32* %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %238 = load i32, i32* @EIO, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %334

240:                                              ; preds = %192
  %241 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %242 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %241, i32 0, i32 1
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @set_capacity(%struct.TYPE_28__* %243, i32 %244)
  %246 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %247 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %246, i32 0, i32 6
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 0
  %250 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %251 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %250, i32 0, i32 1
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %251, align 8
  %253 = call i32 @device_add_disk(i32* %249, %struct.TYPE_28__* %252, i32* null)
  %254 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %255 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %254, i32 0, i32 1
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %255, align 8
  %257 = call i32* @bdget_disk(%struct.TYPE_28__* %256, i32 0)
  %258 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %259 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %258, i32 0, i32 4
  store i32* %257, i32** %259, align 8
  %260 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %261 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %260, i32 0, i32 1
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = call %struct.TYPE_30__* @disk_to_dev(%struct.TYPE_28__* %262)
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 0
  %265 = call %struct.kobject* @kobject_get(i32* %264)
  store %struct.kobject* %265, %struct.kobject** %8, align 8
  %266 = load %struct.kobject*, %struct.kobject** %8, align 8
  %267 = icmp ne %struct.kobject* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %240
  %269 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %270 = load %struct.kobject*, %struct.kobject** %8, align 8
  %271 = call i32 @mtip_hw_sysfs_init(%struct.driver_data* %269, %struct.kobject* %270)
  %272 = load %struct.kobject*, %struct.kobject** %8, align 8
  %273 = call i32 @kobject_put(%struct.kobject* %272)
  br label %274

274:                                              ; preds = %268, %240
  %275 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %276 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %275, i32 0, i32 5
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %276, align 8
  %278 = icmp ne %struct.TYPE_27__* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load i32, i32* @MTIP_DDF_INIT_DONE_BIT, align 4
  %281 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %282 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %281, i32 0, i32 8
  %283 = call i32 @set_bit(i32 %280, i32* %282)
  %284 = load i32, i32* %4, align 4
  store i32 %284, i32* %2, align 4
  br label %360

285:                                              ; preds = %274
  br label %286

286:                                              ; preds = %285, %191
  %287 = load i32, i32* @mtip_service_thread, align 4
  %288 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %289 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %290 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %7, align 4
  %293 = call %struct.TYPE_27__* @kthread_create_on_node(i32 %287, %struct.driver_data* %288, i32 %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %292)
  %294 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %295 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %294, i32 0, i32 5
  store %struct.TYPE_27__* %293, %struct.TYPE_27__** %295, align 8
  %296 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %297 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %296, i32 0, i32 5
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %297, align 8
  %299 = call i64 @IS_ERR(%struct.TYPE_27__* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %286
  %302 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %303 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %302, i32 0, i32 6
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 0
  %306 = call i32 @dev_err(i32* %305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %307 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %308 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %307, i32 0, i32 5
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %308, align 8
  %309 = load i32, i32* @EFAULT, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %4, align 4
  br label %323

311:                                              ; preds = %286
  %312 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %313 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %312, i32 0, i32 5
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %313, align 8
  %315 = call i32 @wake_up_process(%struct.TYPE_27__* %314)
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* @MTIP_FTL_REBUILD_MAGIC, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %311
  %320 = load i32, i32* %5, align 4
  store i32 %320, i32* %4, align 4
  br label %321

321:                                              ; preds = %319, %311
  %322 = load i32, i32* %4, align 4
  store i32 %322, i32* %2, align 4
  br label %360

323:                                              ; preds = %301
  %324 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %325 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %324, i32 0, i32 4
  %326 = load i32*, i32** %325, align 8
  %327 = call i32 @bdput(i32* %326)
  %328 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %329 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %328, i32 0, i32 4
  store i32* null, i32** %329, align 8
  %330 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %331 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %330, i32 0, i32 1
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = call i32 @del_gendisk(%struct.TYPE_28__* %332)
  br label %334

334:                                              ; preds = %323, %232
  br label %335

335:                                              ; preds = %334, %179
  %336 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %337 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %336, i32 0, i32 3
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %337, align 8
  %339 = call i32 @blk_cleanup_queue(%struct.TYPE_27__* %338)
  br label %340

340:                                              ; preds = %335, %153
  %341 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %342 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %341, i32 0, i32 2
  %343 = call i32 @blk_mq_free_tag_set(%struct.TYPE_29__* %342)
  br label %344

344:                                              ; preds = %340, %136
  %345 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %346 = call i32 @mtip_hw_debugfs_exit(%struct.driver_data* %345)
  br label %347

347:                                              ; preds = %344, %59
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @ida_free(i32* @rssd_index_ida, i32 %348)
  br label %350

350:                                              ; preds = %347, %46
  %351 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %352 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %351, i32 0, i32 1
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %352, align 8
  %354 = call i32 @put_disk(%struct.TYPE_28__* %353)
  br label %355

355:                                              ; preds = %350, %33
  %356 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %357 = call i32 @mtip_hw_exit(%struct.driver_data* %356)
  br label %358

358:                                              ; preds = %355, %18
  %359 = load i32, i32* %4, align 4
  store i32 %359, i32* %2, align 4
  br label %360

360:                                              ; preds = %358, %321, %279
  %361 = load i32, i32* %2, align 4
  ret i32 %361
}

declare dso_local i64 @mtip_hw_init(%struct.driver_data*) #1

declare dso_local %struct.TYPE_28__* @alloc_disk_node(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @rssd_disk_name_format(i8*, i32, i32, i32) #1

declare dso_local i32 @mtip_hw_debugfs_init(%struct.driver_data*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @blk_mq_init_queue(%struct.TYPE_29__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_27__*) #1

declare dso_local i32 @mtip_hw_get_identify(%struct.driver_data*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @dma_set_max_seg_size(i32*, i32) #1

declare dso_local i32 @blk_queue_io_min(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @mtip_hw_get_capacity(%struct.driver_data*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @device_add_disk(i32*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32* @bdget_disk(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.kobject* @kobject_get(i32*) #1

declare dso_local %struct.TYPE_30__* @disk_to_dev(%struct.TYPE_28__*) #1

declare dso_local i32 @mtip_hw_sysfs_init(%struct.driver_data*, %struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_27__* @kthread_create_on_node(i32, %struct.driver_data*, i32, i8*, i32) #1

declare dso_local i32 @wake_up_process(%struct.TYPE_27__*) #1

declare dso_local i32 @bdput(i32*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_28__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_27__*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_29__*) #1

declare dso_local i32 @mtip_hw_debugfs_exit(%struct.driver_data*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_28__*) #1

declare dso_local i32 @mtip_hw_exit(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
