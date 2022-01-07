; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_do_rbd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_do_rbd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.rbd_device = type { %struct.TYPE_14__, %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.ceph_options = type { i32 }
%struct.rbd_options = type { i32 }
%struct.rbd_spec = type { i64, i32 }
%struct.rbd_client = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pool %s does not exist\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"alloc_size adjusted to %u\00", align 1
@rbd_dev_list_lock = common dso_local global i32 0, align 4
@rbd_dev_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: capacity %llu features 0x%llx\0A\00", align 1
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, i8*, i64)* @do_rbd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rbd_add(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rbd_device*, align 8
  %9 = alloca %struct.ceph_options*, align 8
  %10 = alloca %struct.rbd_options*, align 8
  %11 = alloca %struct.rbd_spec*, align 8
  %12 = alloca %struct.rbd_client*, align 8
  %13 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.rbd_device* null, %struct.rbd_device** %8, align 8
  store %struct.ceph_options* null, %struct.ceph_options** %9, align 8
  store %struct.rbd_options* null, %struct.rbd_options** %10, align 8
  store %struct.rbd_spec* null, %struct.rbd_spec** %11, align 8
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = call i32 @try_module_get(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %213

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @rbd_add_parse_args(i8* %21, %struct.ceph_options** %9, %struct.rbd_options** %10, %struct.rbd_spec** %11)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %190

26:                                               ; preds = %20
  %27 = load %struct.ceph_options*, %struct.ceph_options** %9, align 8
  %28 = call %struct.rbd_client* @rbd_get_client(%struct.ceph_options* %27)
  store %struct.rbd_client* %28, %struct.rbd_client** %12, align 8
  %29 = load %struct.rbd_client*, %struct.rbd_client** %12, align 8
  %30 = call i64 @IS_ERR(%struct.rbd_client* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.rbd_client*, %struct.rbd_client** %12, align 8
  %34 = call i32 @PTR_ERR(%struct.rbd_client* %33)
  store i32 %34, i32* %13, align 4
  br label %208

35:                                               ; preds = %26
  %36 = load %struct.rbd_client*, %struct.rbd_client** %12, align 8
  %37 = getelementptr inbounds %struct.rbd_client, %struct.rbd_client* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rbd_spec*, %struct.rbd_spec** %11, align 8
  %43 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ceph_pg_poolid_by_name(i32 %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.rbd_spec*, %struct.rbd_spec** %11, align 8
  %55 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %205

59:                                               ; preds = %35
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.rbd_spec*, %struct.rbd_spec** %11, align 8
  %63 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rbd_client*, %struct.rbd_client** %12, align 8
  %65 = load %struct.rbd_spec*, %struct.rbd_spec** %11, align 8
  %66 = load %struct.rbd_options*, %struct.rbd_options** %10, align 8
  %67 = call %struct.rbd_device* @rbd_dev_create(%struct.rbd_client* %64, %struct.rbd_spec* %65, %struct.rbd_options* %66)
  store %struct.rbd_device* %67, %struct.rbd_device** %8, align 8
  %68 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %69 = icmp ne %struct.rbd_device* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %13, align 4
  br label %205

73:                                               ; preds = %59
  store %struct.rbd_client* null, %struct.rbd_client** %12, align 8
  store %struct.rbd_spec* null, %struct.rbd_spec** %11, align 8
  store %struct.rbd_options* null, %struct.rbd_options** %10, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @kstrdup(i8* %74, i32 %75)
  %77 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %78 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %80 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %202

86:                                               ; preds = %73
  %87 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %88 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %87, i32 0, i32 7
  %89 = call i32 @down_write(i32* %88)
  %90 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %91 = call i32 @rbd_dev_image_probe(%struct.rbd_device* %90, i32 0)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %96 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %95, i32 0, i32 7
  %97 = call i32 @up_write(i32* %96)
  br label %202

98:                                               ; preds = %86
  %99 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %100 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %99, i32 0, i32 6
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CEPH_NOSNAP, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %108 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %107, i32 0, i32 5
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %113 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %112, i32 0, i32 5
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %118 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %116, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %111
  %123 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %124 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %125 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @rbd_warn(%struct.rbd_device* %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %130 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %134 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %133, i32 0, i32 5
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  store i64 %132, i64* %136, align 8
  br label %137

137:                                              ; preds = %122, %111
  %138 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %139 = call i32 @rbd_dev_device_setup(%struct.rbd_device* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %199

143:                                              ; preds = %137
  %144 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %145 = call i32 @rbd_add_acquire_lock(%struct.rbd_device* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %194

149:                                              ; preds = %143
  %150 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %151 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %150, i32 0, i32 3
  %152 = call i32 @device_add(i32* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %194

156:                                              ; preds = %149
  %157 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %158 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %157, i32 0, i32 1
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = call i32 @add_disk(%struct.TYPE_15__* %159)
  %161 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %162 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %161, i32 0, i32 1
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @blk_put_queue(i32 %165)
  %167 = call i32 @spin_lock(i32* @rbd_dev_list_lock)
  %168 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %169 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %168, i32 0, i32 2
  %170 = call i32 @list_add_tail(i32* %169, i32* @rbd_dev_list)
  %171 = call i32 @spin_unlock(i32* @rbd_dev_list_lock)
  %172 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %173 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %172, i32 0, i32 1
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %178 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %177, i32 0, i32 1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = call i64 @get_capacity(%struct.TYPE_15__* %179)
  %181 = load i64, i64* @SECTOR_SHIFT, align 8
  %182 = shl i64 %180, %181
  %183 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %184 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %176, i64 %182, i32 %186)
  %188 = load i64, i64* %7, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %13, align 4
  br label %190

190:                                              ; preds = %208, %156, %25
  %191 = load i32, i32* @THIS_MODULE, align 4
  %192 = call i32 @module_put(i32 %191)
  %193 = load i32, i32* %13, align 4
  store i32 %193, i32* %4, align 4
  br label %213

194:                                              ; preds = %155, %148
  %195 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %196 = call i32 @rbd_dev_image_unlock(%struct.rbd_device* %195)
  %197 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %198 = call i32 @rbd_dev_device_release(%struct.rbd_device* %197)
  br label %199

199:                                              ; preds = %194, %142
  %200 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %201 = call i32 @rbd_dev_image_release(%struct.rbd_device* %200)
  br label %202

202:                                              ; preds = %199, %94, %83
  %203 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %204 = call i32 @rbd_dev_destroy(%struct.rbd_device* %203)
  br label %205

205:                                              ; preds = %202, %70, %58
  %206 = load %struct.rbd_client*, %struct.rbd_client** %12, align 8
  %207 = call i32 @rbd_put_client(%struct.rbd_client* %206)
  br label %208

208:                                              ; preds = %205, %32
  %209 = load %struct.rbd_spec*, %struct.rbd_spec** %11, align 8
  %210 = call i32 @rbd_spec_put(%struct.rbd_spec* %209)
  %211 = load %struct.rbd_options*, %struct.rbd_options** %10, align 8
  %212 = call i32 @kfree(%struct.rbd_options* %211)
  br label %190

213:                                              ; preds = %190, %17
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rbd_add_parse_args(i8*, %struct.ceph_options**, %struct.rbd_options**, %struct.rbd_spec**) #1

declare dso_local %struct.rbd_client* @rbd_get_client(%struct.ceph_options*) #1

declare dso_local i64 @IS_ERR(%struct.rbd_client*) #1

declare dso_local i32 @PTR_ERR(%struct.rbd_client*) #1

declare dso_local i32 @ceph_pg_poolid_by_name(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local %struct.rbd_device* @rbd_dev_create(%struct.rbd_client*, %struct.rbd_spec*, %struct.rbd_options*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rbd_dev_image_probe(%struct.rbd_device*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i64) #1

declare dso_local i32 @rbd_dev_device_setup(%struct.rbd_device*) #1

declare dso_local i32 @rbd_add_acquire_lock(%struct.rbd_device*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @add_disk(%struct.TYPE_15__*) #1

declare dso_local i32 @blk_put_queue(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @get_capacity(%struct.TYPE_15__*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @rbd_dev_image_unlock(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_device_release(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_image_release(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_destroy(%struct.rbd_device*) #1

declare dso_local i32 @rbd_put_client(%struct.rbd_client*) #1

declare dso_local i32 @rbd_spec_put(%struct.rbd_spec*) #1

declare dso_local i32 @kfree(%struct.rbd_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
