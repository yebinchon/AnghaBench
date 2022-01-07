; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_setupchannels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xilly_setupchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, %struct.device*, %struct.xilly_channel** }
%struct.device = type { i32 }
%struct.xilly_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.xilly_buffer**, %struct.xilly_buffer**, %struct.xilly_endpoint*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xilly_buffer = type { i32 }
%struct.xilly_alloc_state = type { i32, i32, i32, i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xillybus_autoflush = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IDT requests channel out of range. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Corrupt IDT: No message buffer. Aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_endpoint*, i8*, i32)* @xilly_setupchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_setupchannels(%struct.xilly_endpoint* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xilly_endpoint*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xilly_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.xilly_alloc_state, align 8
  %26 = alloca %struct.xilly_alloc_state, align 8
  %27 = alloca %struct.xilly_buffer**, align 8
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %29 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %28, i32 0, i32 1
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %8, align 8
  store i32 0, i32* %24, align 4
  %31 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %25, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %25, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %25, i32 0, i32 2
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %25, i32 0, i32 3
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %25, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %26, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %26, i32 0, i32 1
  store i32 -2147483648, i32* %38, align 4
  %39 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %26, i32 0, i32 2
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %26, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.xilly_alloc_state, %struct.xilly_alloc_state* %26, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %45 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @devm_kcalloc(%struct.device* %43, i32 %46, i32 200, i32 %47)
  %49 = bitcast i8* %48 to %struct.xilly_channel*
  store %struct.xilly_channel* %49, %struct.xilly_channel** %12, align 8
  %50 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %51 = icmp ne %struct.xilly_channel* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %387

55:                                               ; preds = %3
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %58 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @devm_kcalloc(%struct.device* %56, i32 %60, i32 8, i32 %61)
  %63 = bitcast i8* %62 to %struct.xilly_channel**
  %64 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %65 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %64, i32 0, i32 2
  store %struct.xilly_channel** %63, %struct.xilly_channel*** %65, align 8
  %66 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %67 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %66, i32 0, i32 2
  %68 = load %struct.xilly_channel**, %struct.xilly_channel*** %67, align 8
  %69 = icmp ne %struct.xilly_channel** %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %387

73:                                               ; preds = %55
  %74 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %75 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %74, i32 0, i32 2
  %76 = load %struct.xilly_channel**, %struct.xilly_channel*** %75, align 8
  %77 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %76, i64 0
  store %struct.xilly_channel* null, %struct.xilly_channel** %77, align 8
  store i32 1, i32* %9, align 4
  br label %78

78:                                               ; preds = %158, %73
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %81 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %161

84:                                               ; preds = %78
  %85 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %86 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %85, i32 0, i32 17
  store %struct.xilly_buffer** null, %struct.xilly_buffer*** %86, align 8
  %87 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %88 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %87, i32 0, i32 18
  store %struct.xilly_buffer** null, %struct.xilly_buffer*** %88, align 8
  %89 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %90 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %92 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %94 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %93, i32 0, i32 2
  store i32 -1, i32* %94, align 8
  %95 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %96 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %95, i32 0, i32 36
  store i64 0, i64* %96, align 8
  %97 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %98 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %97, i32 0, i32 35
  store i64 0, i64* %98, align 8
  %99 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %100 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %99, i32 0, i32 3
  store i32 1, i32* %100, align 4
  %101 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %102 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %101, i32 0, i32 34
  store i64 0, i64* %102, align 8
  %103 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %104 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %103, i32 0, i32 4
  store i32 1, i32* %104, align 8
  %105 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %106 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %105, i32 0, i32 33
  store i64 0, i64* %106, align 8
  %107 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %108 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %107, i32 0, i32 32
  store i64 0, i64* %108, align 8
  %109 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %110 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %109, i32 0, i32 31
  store i64 0, i64* %110, align 8
  %111 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %112 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %111, i32 0, i32 30
  store i64 0, i64* %112, align 8
  %113 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %114 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %113, i32 0, i32 29
  store i64 0, i64* %114, align 8
  %115 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %116 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %115, i32 0, i32 28
  store i64 0, i64* %116, align 8
  %117 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %118 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %117, i32 0, i32 27
  %119 = call i32 @spin_lock_init(i32* %118)
  %120 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %121 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %120, i32 0, i32 26
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %124 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %123, i32 0, i32 25
  %125 = call i32 @mutex_init(i32* %124)
  %126 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %127 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %126, i32 0, i32 24
  %128 = call i32 @mutex_init(i32* %127)
  %129 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %130 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %129, i32 0, i32 23
  %131 = call i32 @init_waitqueue_head(i32* %130)
  %132 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %133 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %132, i32 0, i32 22
  %134 = call i32 @init_waitqueue_head(i32* %133)
  %135 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %136 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %135, i32 0, i32 21
  %137 = call i32 @init_waitqueue_head(i32* %136)
  %138 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %139 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %138, i32 0, i32 20
  %140 = load i32, i32* @xillybus_autoflush, align 4
  %141 = call i32 @INIT_DELAYED_WORK(i32* %139, i32 %140)
  %142 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %143 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %144 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %143, i32 0, i32 19
  store %struct.xilly_endpoint* %142, %struct.xilly_endpoint** %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %147 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %149 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %148, i32 0, i32 6
  store i32 0, i32* %149, align 8
  %150 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %151 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %150, i32 1
  store %struct.xilly_channel* %151, %struct.xilly_channel** %12, align 8
  %152 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %153 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %152, i32 0, i32 2
  %154 = load %struct.xilly_channel**, %struct.xilly_channel*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %154, i64 %156
  store %struct.xilly_channel* %150, %struct.xilly_channel** %157, align 8
  br label %158

158:                                              ; preds = %84
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %78

161:                                              ; preds = %78
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %371, %161
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %376

166:                                              ; preds = %162
  store %struct.xilly_buffer** null, %struct.xilly_buffer*** %27, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 1
  store i32 %171, i32* %17, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = ashr i32 %175, 1
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 15
  %182 = shl i32 %181, 7
  %183 = or i32 %176, %182
  store i32 %183, i32* %13, align 4
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = ashr i32 %187, 4
  %189 = and i32 %188, 3
  store i32 %189, i32* %16, align 4
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = ashr i32 %193, 6
  %195 = and i32 %194, 1
  store i32 %195, i32* %20, align 4
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = ashr i32 %199, 7
  %201 = and i32 %200, 1
  store i32 %201, i32* %19, align 4
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %205, 31
  %207 = shl i32 1, %206
  store i32 %207, i32* %15, align 4
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 3
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 15
  %213 = shl i32 1, %212
  store i32 %213, i32* %14, align 4
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = ashr i32 %217, 7
  %219 = and i32 %218, 1
  store i32 %219, i32* %21, align 4
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 2
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = ashr i32 %223, 6
  %225 = and i32 %224, 1
  store i32 %225, i32* %22, align 4
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = ashr i32 %229, 5
  %231 = and i32 %230, 1
  store i32 %231, i32* %23, align 4
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %234 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %232, %235
  br i1 %236, label %243, label %237

237:                                              ; preds = %166
  %238 = load i32, i32* %13, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load i32, i32* %17, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %240, %166
  %244 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %245 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %244, i32 0, i32 1
  %246 = load %struct.device*, %struct.device** %245, align 8
  %247 = call i32 @dev_err(%struct.device* %246, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %248 = load i32, i32* @ENODEV, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %4, align 4
  br label %387

250:                                              ; preds = %240, %237
  %251 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %252 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %251, i32 0, i32 2
  %253 = load %struct.xilly_channel**, %struct.xilly_channel*** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %253, i64 %255
  %257 = load %struct.xilly_channel*, %struct.xilly_channel** %256, align 8
  store %struct.xilly_channel* %257, %struct.xilly_channel** %12, align 8
  %258 = load i32, i32* %17, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load i32, i32* %13, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %290

263:                                              ; preds = %260, %250
  %264 = load i32, i32* %16, align 4
  %265 = icmp sgt i32 %264, 2
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  br label %269

267:                                              ; preds = %263
  %268 = load i32, i32* %16, align 4
  br label %269

269:                                              ; preds = %267, %266
  %270 = phi i32 [ 2, %266 ], [ %268, %267 ]
  %271 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %272 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %275 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 1, %276
  %278 = mul nsw i32 %273, %277
  store i32 %278, i32* %18, align 4
  %279 = load %struct.device*, %struct.device** %8, align 8
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i8* @devm_kcalloc(%struct.device* %279, i32 %280, i32 8, i32 %281)
  %283 = bitcast i8* %282 to %struct.xilly_buffer**
  store %struct.xilly_buffer** %283, %struct.xilly_buffer*** %27, align 8
  %284 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %27, align 8
  %285 = icmp ne %struct.xilly_buffer** %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %269
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %4, align 4
  br label %387

289:                                              ; preds = %269
  br label %293

290:                                              ; preds = %260
  %291 = load i32, i32* %15, align 4
  %292 = shl i32 %291, 2
  store i32 %292, i32* %18, align 4
  br label %293

293:                                              ; preds = %290, %289
  %294 = load i32, i32* %17, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %323, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %14, align 4
  %298 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %299 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* %18, align 4
  %301 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %302 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %20, align 4
  %304 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %305 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %304, i32 0, i32 8
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* %19, align 4
  %307 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %308 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %307, i32 0, i32 9
  store i32 %306, i32* %308, align 4
  %309 = load i32, i32* %21, align 4
  %310 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %311 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %310, i32 0, i32 10
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* %22, align 4
  %313 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %314 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %313, i32 0, i32 11
  store i32 %312, i32* %314, align 4
  %315 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %27, align 8
  %316 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %317 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %316, i32 0, i32 18
  store %struct.xilly_buffer** %315, %struct.xilly_buffer*** %317, align 8
  %318 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %319 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %27, align 8
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %18, align 4
  %322 = call i32 @xilly_get_dma_buffers(%struct.xilly_endpoint* %318, %struct.xilly_alloc_state* %25, %struct.xilly_buffer** %319, i32 %320, i32 %321)
  store i32 %322, i32* %11, align 4
  br label %364

323:                                              ; preds = %293
  %324 = load i32, i32* %13, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %356

326:                                              ; preds = %323
  %327 = load i32, i32* %14, align 4
  %328 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %329 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  %330 = load i32, i32* %18, align 4
  %331 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %332 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %331, i32 0, i32 12
  store i32 %330, i32* %332, align 8
  %333 = load i32, i32* %22, align 4
  %334 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %335 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %334, i32 0, i32 11
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* %23, align 4
  %337 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %338 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %337, i32 0, i32 13
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* %20, align 4
  %340 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %341 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %340, i32 0, i32 14
  store i32 %339, i32* %341, align 8
  %342 = load i32, i32* %19, align 4
  %343 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %344 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %343, i32 0, i32 15
  store i32 %342, i32* %344, align 4
  %345 = load i32, i32* %21, align 4
  %346 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %347 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %346, i32 0, i32 16
  store i32 %345, i32* %347, align 8
  %348 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %27, align 8
  %349 = load %struct.xilly_channel*, %struct.xilly_channel** %12, align 8
  %350 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %349, i32 0, i32 17
  store %struct.xilly_buffer** %348, %struct.xilly_buffer*** %350, align 8
  %351 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %352 = load %struct.xilly_buffer**, %struct.xilly_buffer*** %27, align 8
  %353 = load i32, i32* %14, align 4
  %354 = load i32, i32* %18, align 4
  %355 = call i32 @xilly_get_dma_buffers(%struct.xilly_endpoint* %351, %struct.xilly_alloc_state* %26, %struct.xilly_buffer** %352, i32 %353, i32 %354)
  store i32 %355, i32* %11, align 4
  br label %363

356:                                              ; preds = %323
  %357 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* %18, align 4
  %360 = call i32 @xilly_get_dma_buffers(%struct.xilly_endpoint* %357, %struct.xilly_alloc_state* %26, %struct.xilly_buffer** null, i32 %358, i32 %359)
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %24, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %24, align 4
  br label %363

363:                                              ; preds = %356, %326
  br label %364

364:                                              ; preds = %363, %296
  %365 = load i32, i32* %11, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32, i32* @ENOMEM, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %4, align 4
  br label %387

370:                                              ; preds = %364
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %10, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %10, align 4
  %374 = load i8*, i8** %6, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 4
  store i8* %375, i8** %6, align 8
  br label %162

376:                                              ; preds = %162
  %377 = load i32, i32* %24, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %381 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %380, i32 0, i32 1
  %382 = load %struct.device*, %struct.device** %381, align 8
  %383 = call i32 @dev_err(%struct.device* %382, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %384 = load i32, i32* @ENODEV, align 4
  %385 = sub nsw i32 0, %384
  store i32 %385, i32* %4, align 4
  br label %387

386:                                              ; preds = %376
  store i32 0, i32* %4, align 4
  br label %387

387:                                              ; preds = %386, %379, %367, %286, %243, %70, %52
  %388 = load i32, i32* %4, align 4
  ret i32 %388
}

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @xilly_get_dma_buffers(%struct.xilly_endpoint*, %struct.xilly_alloc_state*, %struct.xilly_buffer**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
