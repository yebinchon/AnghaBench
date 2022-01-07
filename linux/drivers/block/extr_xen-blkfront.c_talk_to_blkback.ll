; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_talk_to_blkback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_talk_to_blkback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i8*, i32 }
%struct.blkfront_info = type { i32, i32, %struct.blkfront_ring_info*, %struct.TYPE_6__* }
%struct.blkfront_ring_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"max-ring-page-order\00", align 1
@xen_blkif_max_ring_order = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ring-page-order\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"writing ring-page-order\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"multi-queue-num-queues\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"writing multi-queue-num-queues\00", align 1
@QUEUE_NAME_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"ENOMEM while writing ring references\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s/queue-%u\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@XEN_IO_PROTO_ABI_NATIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"writing protocol\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"feature-persistent\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"writing persistent grants feature to xenbus\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@blkfront_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.blkfront_info*)* @talk_to_blkback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talk_to_blkback(%struct.xenbus_device* %0, %struct.blkfront_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.blkfront_ring_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.blkfront_ring_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.blkfront_info* %1, %struct.blkfront_info** %5, align 8
  store i8* null, i8** %6, align 8
  %17 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %18 = icmp ne %struct.blkfront_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %297

22:                                               ; preds = %2
  %23 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %24 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xenbus_read_unsigned(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @xen_blkif_max_ring_order, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %35 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %37 = call i32 @negotiate_mq(%struct.blkfront_info* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %286

41:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %45 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %50 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %49, i32 0, i32 2
  %51 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %51, i64 %53
  store %struct.blkfront_ring_info* %54, %struct.blkfront_ring_info** %12, align 8
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %56 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %12, align 8
  %57 = call i32 @setup_blkring(%struct.xenbus_device* %55, %struct.blkfront_ring_info* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %286

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %42

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %214, %65
  %67 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %7)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %71, i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %286

74:                                               ; preds = %66
  %75 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %76 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %81 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @xenbus_printf(i32 %85, i8* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %274

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %93 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %98 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %97, i32 0, i32 2
  %99 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %98, align 8
  %100 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %99, i64 0
  %101 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %102 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @write_per_ring_nodes(i32 %105, %struct.blkfront_ring_info* %100, i8* %103)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %286

110:                                              ; preds = %96
  br label %179

111:                                              ; preds = %91
  %112 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %113 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %116 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @xenbus_printf(i32 %119, i8* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %274

124:                                              ; preds = %111
  %125 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %126 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = load i64, i64* @QUEUE_NAME_LEN, align 8
  %130 = add i64 %128, %129
  store i64 %130, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @kmalloc(i64 %131, i32 %132)
  store i8* %133, i8** %13, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %274

139:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %173, %139
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %143 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %140
  %147 = load i8*, i8** %13, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @memset(i8* %147, i32 0, i64 %148)
  %150 = load i8*, i8** %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %153 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @snprintf(i8* %150, i64 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %154, i32 %155)
  %157 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %158 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %157, i32 0, i32 2
  %159 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %159, i64 %161
  %163 = load i8*, i8** %13, align 8
  %164 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @write_per_ring_nodes(i32 %165, %struct.blkfront_ring_info* %162, i8* %163)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %146
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @kfree(i8* %170)
  br label %286

172:                                              ; preds = %146
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %140

176:                                              ; preds = %140
  %177 = load i8*, i8** %13, align 8
  %178 = call i32 @kfree(i8* %177)
  br label %179

179:                                              ; preds = %176, %110
  %180 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %181 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* @XEN_IO_PROTO_ABI_NATIVE, align 4
  %184 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @xenbus_printf(i32 %185, i8* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %274

190:                                              ; preds = %179
  %191 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %192 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @xenbus_printf(i32 %195, i8* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %201 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %200, i32 0, i32 1
  %202 = call i32 @dev_warn(i32* %201, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  br label %203

203:                                              ; preds = %199, %190
  %204 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @xenbus_transaction_end(i32 %205, i32 0)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @EAGAIN, align 4
  %212 = sub nsw i32 0, %211
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %66

215:                                              ; preds = %209
  %216 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %216, i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %286

219:                                              ; preds = %203
  store i32 0, i32* %9, align 4
  br label %220

220:                                              ; preds = %267, %219
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %223 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ult i32 %221, %224
  br i1 %225, label %226, label %270

226:                                              ; preds = %220
  %227 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %228 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %227, i32 0, i32 2
  %229 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %229, i64 %231
  store %struct.blkfront_ring_info* %232, %struct.blkfront_ring_info** %16, align 8
  store i32 0, i32* %15, align 4
  br label %233

233:                                              ; preds = %251, %226
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %236 = call i32 @BLK_RING_SIZE(%struct.blkfront_info* %235)
  %237 = icmp ult i32 %234, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %233
  %239 = load i32, i32* %15, align 4
  %240 = add i32 %239, 1
  %241 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %16, align 8
  %242 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %241, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i32, i32* %15, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  store i32 %240, i32* %250, align 4
  br label %251

251:                                              ; preds = %238
  %252 = load i32, i32* %15, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %15, align 4
  br label %233

254:                                              ; preds = %233
  %255 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %16, align 8
  %256 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %255, i32 0, i32 0
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %259 = call i32 @BLK_RING_SIZE(%struct.blkfront_info* %258)
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store i32 268435455, i32* %266, align 4
  br label %267

267:                                              ; preds = %254
  %268 = load i32, i32* %9, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %220

270:                                              ; preds = %220
  %271 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %272 = load i32, i32* @XenbusStateInitialised, align 4
  %273 = call i32 @xenbus_switch_state(%struct.xenbus_device* %271, i32 %272)
  store i32 0, i32* %3, align 4
  br label %297

274:                                              ; preds = %189, %136, %123, %89
  %275 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @xenbus_transaction_end(i32 %276, i32 1)
  %278 = load i8*, i8** %6, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i8*, i8** %6, align 8
  %284 = call i32 (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %281, i32 %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %283)
  br label %285

285:                                              ; preds = %280, %274
  br label %286

286:                                              ; preds = %285, %215, %169, %109, %70, %60, %40
  %287 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %288 = call i32 @blkif_free(%struct.blkfront_info* %287, i32 0)
  %289 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %290 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %291 = call i32 @free_info(%struct.blkfront_info* %290)
  %292 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  %293 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %294 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %293, i32 0, i32 1
  %295 = call i32 @dev_set_drvdata(i32* %294, i32* null)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %286, %270, %19
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @negotiate_mq(%struct.blkfront_info*) #1

declare dso_local i32 @setup_blkring(%struct.xenbus_device*, %struct.blkfront_ring_info*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @write_per_ring_nodes(i32, %struct.blkfront_ring_info*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @BLK_RING_SIZE(%struct.blkfront_info*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_info(%struct.blkfront_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
