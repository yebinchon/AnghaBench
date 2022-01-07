; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_proc.c_drbd_syncer_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_proc.c_drbd_syncer_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i64*, i64*, i64, i64, i64, i64, i64, i64 }
%struct.seq_file = type { i32 }
%union.drbd_dev_state = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"\09[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@C_VERIFY_S = common dso_local global i64 0, align 8
@C_VERIFY_T = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"verified:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sync'ed:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%3u.%u%% \00", align 1
@BM_BLOCK_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"(%lu/%lu)M\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"(%lu/%lu)K\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@DRBD_SYNC_MARKS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"finish: %lu:%02lu:%02lu\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" speed: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@drbd_proc_details = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c" -- \00", align 1
@C_SYNC_TARGET = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c" want: \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" K/sec%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c" (stalled)\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"\09%3d%% sector pos: %llu/%llu\00", align 1
@BM_SECT_PER_BIT = common dso_local global i64 0, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c" stop sector: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.seq_file*, i64)* @drbd_syncer_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_syncer_progress(%struct.drbd_device* %0, %struct.seq_file* %1, i64 %2) #0 {
  %4 = alloca %union.drbd_dev_state, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = getelementptr inbounds %union.drbd_dev_state, %union.drbd_dev_state* %4, i32 0, i32 0
  store i64 %2, i64* %21, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store %struct.seq_file* %1, %struct.seq_file** %6, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %23 = getelementptr inbounds %union.drbd_dev_state, %union.drbd_dev_state* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @drbd_get_syncer_progress(%struct.drbd_device* %22, i64 %24, i64* %11, i64* %12, i32* %13)
  %26 = load i32, i32* %13, align 4
  %27 = udiv i32 %26, 50
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 20, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %32

32:                                               ; preds = %39, %3
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %38 = call i32 @seq_putc(%struct.seq_file* %37, i8 signext 61)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %32

42:                                               ; preds = %32
  %43 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %44 = call i32 @seq_putc(%struct.seq_file* %43, i8 signext 62)
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %52, %42
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %51 = call i32 @seq_putc(%struct.seq_file* %50, i8 signext 46)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %45

55:                                               ; preds = %45
  %56 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %58 = bitcast %union.drbd_dev_state* %4 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @C_VERIFY_S, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = bitcast %union.drbd_dev_state* %4 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @C_VERIFY_T, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %55
  %68 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %69 = call i32 @seq_puts(%struct.seq_file* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %73

70:                                               ; preds = %62
  %71 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %72 = call i32 @seq_puts(%struct.seq_file* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = udiv i32 %75, 10
  %77 = load i32, i32* %13, align 4
  %78 = urem i32 %77, 10
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* @BM_BLOCK_SHIFT, align 4
  %82 = sub nsw i32 30, %81
  %83 = zext i32 %82 to i64
  %84 = shl i64 4, %83
  %85 = icmp ugt i64 %80, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %73
  %87 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %88 = load i64, i64* %12, align 8
  %89 = lshr i64 %88, 10
  %90 = call i64 @Bit2KB(i64 %89)
  %91 = load i64, i64* %11, align 8
  %92 = lshr i64 %91, 10
  %93 = call i64 @Bit2KB(i64 %92)
  %94 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %90, i64 %93)
  br label %102

95:                                               ; preds = %73
  %96 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @Bit2KB(i64 %97)
  %99 = load i64, i64* %11, align 8
  %100 = call i64 @Bit2KB(i64 %99)
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %98, i64 %100)
  br label %102

102:                                              ; preds = %95, %86
  %103 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %104 = call i32 @seq_puts(%struct.seq_file* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %106 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 2
  %109 = load i32, i32* @DRBD_SYNC_MARKS, align 4
  %110 = srem i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = load i64, i64* @jiffies, align 8
  %112 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %113 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %111, %118
  %120 = load i64, i64* @HZ, align 8
  %121 = udiv i64 %119, %120
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ugt i64 %122, 180
  br i1 %123, label %124, label %125

124:                                              ; preds = %102
  store i32 1, i32* %17, align 4
  br label %125

125:                                              ; preds = %124, %102
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %8, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %133 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub i64 %138, %139
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %7, align 8
  %144 = udiv i64 %143, 100
  %145 = add i64 %144, 1
  %146 = udiv i64 %142, %145
  %147 = mul i64 %141, %146
  %148 = udiv i64 %147, 100
  store i64 %148, i64* %10, align 8
  %149 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %150 = load i64, i64* %10, align 8
  %151 = udiv i64 %150, 3600
  %152 = load i64, i64* %10, align 8
  %153 = urem i64 %152, 3600
  %154 = udiv i64 %153, 60
  %155 = load i64, i64* %10, align 8
  %156 = urem i64 %155, 60
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %151, i64 %154, i64 %156)
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %8, align 8
  %160 = udiv i64 %158, %159
  %161 = call i64 @Bit2KB(i64 %160)
  store i64 %161, i64* %9, align 8
  %162 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %163 = call i32 @seq_puts(%struct.seq_file* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %164 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @seq_printf_with_thousands_grouping(%struct.seq_file* %164, i64 %165)
  %167 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %168 = call i32 @seq_puts(%struct.seq_file* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %169 = load i32, i32* @drbd_proc_details, align 4
  %170 = icmp sge i32 %169, 1
  br i1 %170, label %171, label %215

171:                                              ; preds = %131
  %172 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %173 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @DRBD_SYNC_MARKS, align 4
  %176 = add nsw i32 %174, %175
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* @DRBD_SYNC_MARKS, align 4
  %179 = srem i32 %177, %178
  store i32 %179, i32* %14, align 4
  %180 = load i64, i64* @jiffies, align 8
  %181 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %182 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %180, %187
  %189 = load i64, i64* @HZ, align 8
  %190 = udiv i64 %188, %189
  store i64 %190, i64* %8, align 8
  %191 = load i64, i64* %8, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %171
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %8, align 8
  br label %196

196:                                              ; preds = %193, %171
  %197 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %198 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %197, i32 0, i32 2
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = sub i64 %203, %204
  store i64 %205, i64* %7, align 8
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %8, align 8
  %208 = udiv i64 %206, %207
  %209 = call i64 @Bit2KB(i64 %208)
  store i64 %209, i64* %9, align 8
  %210 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %211 = load i64, i64* %9, align 8
  %212 = call i32 @seq_printf_with_thousands_grouping(%struct.seq_file* %210, i64 %211)
  %213 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %214 = call i32 @seq_puts(%struct.seq_file* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %215

215:                                              ; preds = %196, %131
  %216 = load i64, i64* @jiffies, align 8
  %217 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %218 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = sub i64 %216, %219
  %221 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %222 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = sub i64 %220, %223
  %225 = load i64, i64* @HZ, align 8
  %226 = udiv i64 %224, %225
  store i64 %226, i64* %8, align 8
  %227 = load i64, i64* %8, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %215
  store i64 1, i64* %8, align 8
  br label %230

230:                                              ; preds = %229, %215
  %231 = load i64, i64* %11, align 8
  %232 = load i64, i64* %12, align 8
  %233 = sub i64 %231, %232
  store i64 %233, i64* %7, align 8
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* %8, align 8
  %236 = udiv i64 %234, %235
  %237 = call i64 @Bit2KB(i64 %236)
  store i64 %237, i64* %9, align 8
  %238 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %239 = load i64, i64* %9, align 8
  %240 = call i32 @seq_printf_with_thousands_grouping(%struct.seq_file* %238, i64 %239)
  %241 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %242 = call i32 @seq_putc(%struct.seq_file* %241, i8 signext 41)
  %243 = bitcast %union.drbd_dev_state* %4 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @C_SYNC_TARGET, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %252, label %247

247:                                              ; preds = %230
  %248 = bitcast %union.drbd_dev_state* %4 to i64*
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @C_VERIFY_S, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %247, %230
  %253 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %254 = call i32 @seq_puts(%struct.seq_file* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %255 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %256 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %257 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @seq_printf_with_thousands_grouping(%struct.seq_file* %255, i64 %258)
  br label %260

260:                                              ; preds = %252, %247
  %261 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %262 = load i32, i32* %17, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %266 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %261, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %265)
  %267 = load i32, i32* @drbd_proc_details, align 4
  %268 = icmp sge i32 %267, 1
  br i1 %268, label %269, label %327

269:                                              ; preds = %260
  %270 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %271 = call i64 @drbd_bm_bits(%struct.drbd_device* %270)
  store i64 %271, i64* %18, align 8
  store i64 0, i64* %20, align 8
  %272 = bitcast %union.drbd_dev_state* %4 to i64*
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @C_VERIFY_S, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %281, label %276

276:                                              ; preds = %269
  %277 = bitcast %union.drbd_dev_state* %4 to i64*
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @C_VERIFY_T, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %276, %269
  %282 = load i64, i64* %18, align 8
  %283 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %284 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = sub i64 %282, %285
  store i64 %286, i64* %19, align 8
  %287 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %288 = call i64 @verify_can_do_stop_sector(%struct.drbd_device* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %281
  %291 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %292 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %291, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %20, align 8
  br label %294

294:                                              ; preds = %290, %281
  br label %299

295:                                              ; preds = %276
  %296 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %297 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %296, i32 0, i32 8
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %19, align 8
  br label %299

299:                                              ; preds = %295, %294
  %300 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %301 = load i64, i64* %19, align 8
  %302 = load i64, i64* %18, align 8
  %303 = udiv i64 %302, 100
  %304 = add i64 %303, 1
  %305 = udiv i64 %301, %304
  %306 = trunc i64 %305 to i32
  %307 = load i64, i64* %19, align 8
  %308 = load i64, i64* @BM_SECT_PER_BIT, align 8
  %309 = mul i64 %307, %308
  %310 = load i64, i64* %18, align 8
  %311 = load i64, i64* @BM_SECT_PER_BIT, align 8
  %312 = mul i64 %310, %311
  %313 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %300, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %306, i64 %309, i64 %312)
  %314 = load i64, i64* %20, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %299
  %317 = load i64, i64* %20, align 8
  %318 = load i64, i64* @ULLONG_MAX, align 8
  %319 = icmp ne i64 %317, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %322 = load i64, i64* %20, align 8
  %323 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %321, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64 %322)
  br label %324

324:                                              ; preds = %320, %316, %299
  %325 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %326 = call i32 @seq_putc(%struct.seq_file* %325, i8 signext 10)
  br label %327

327:                                              ; preds = %324, %260
  ret void
}

declare dso_local i32 @drbd_get_syncer_progress(%struct.drbd_device*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @Bit2KB(i64) #1

declare dso_local i32 @seq_printf_with_thousands_grouping(%struct.seq_file*, i64) #1

declare dso_local i64 @drbd_bm_bits(%struct.drbd_device*) #1

declare dso_local i64 @verify_can_do_stop_sector(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
