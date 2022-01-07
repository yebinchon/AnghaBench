; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_http_return_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_http_return_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32, i32*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.lev_storage_file = type { i64, i64, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"http_return_file: meta == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Metafile timeout error %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_meta_aio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Metafile read error %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_corrupted = common dso_local global i32 0, align 4
@STORAGE_SECRET_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"Metafiles 2 high bytes of secret is corrupted, %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_secret = common dso_local global i32 0, align 4
@LEV_STORAGE_FILE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"E->type isn't LEV_STORAGE_FILE %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_type = common dso_local global i32 0, align 4
@ct_last = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"Illegal E->content_type in %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_content_type = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"local_id not matched %s, offset: %lld, volume_id: %lld\0A\00", align 1
@redirect_retries_local_id = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"secret not matched %s, offset: %lld, volume_id: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"E->content_type (%d) != content_type (%d) %s, offset: %lld, volume_id: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"E->size = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_return_file(%struct.connection* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_storage_file*, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -500, i32* %5, align 4
  br label %256

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %37)
  %39 = load %struct.connection*, %struct.connection** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @http_try_x_accel_redirect(%struct.connection* %39, %struct.TYPE_7__* %40, i64 %41, i32 %42, i32 -500, i32* @redirect_retries_meta_aio)
  store i32 %43, i32* %5, align 4
  br label %256

44:                                               ; preds = %15
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %62)
  %64 = load %struct.connection*, %struct.connection** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @http_try_x_accel_redirect(%struct.connection* %64, %struct.TYPE_7__* %65, i64 %66, i32 %67, i32 -500, i32* @redirect_retries_corrupted)
  store i32 %68, i32* %5, align 4
  br label %256

69:                                               ; preds = %44
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = bitcast i32* %73 to %struct.lev_storage_file*
  store %struct.lev_storage_file* %74, %struct.lev_storage_file** %10, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %77 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = xor i64 %75, %78
  %80 = load i64, i64* @STORAGE_SECRET_MASK, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %69
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %91, i32 %96)
  %98 = load %struct.connection*, %struct.connection** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @http_try_x_accel_redirect(%struct.connection* %98, %struct.TYPE_7__* %99, i64 %100, i32 %101, i32 -500, i32* @redirect_retries_secret)
  store i32 %102, i32* %5, align 4
  br label %256

103:                                              ; preds = %69
  %104 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %105 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LEV_STORAGE_FILE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %117, i32 %122)
  %124 = load %struct.connection*, %struct.connection** %6, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @http_try_x_accel_redirect(%struct.connection* %124, %struct.TYPE_7__* %125, i64 %126, i32 %127, i32 -500, i32* @redirect_retries_type)
  store i32 %128, i32* %5, align 4
  br label %256

129:                                              ; preds = %103
  %130 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %131 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ct_last, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %137 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %135, %129
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %145, i32 %148, i32 %153)
  %155 = load %struct.connection*, %struct.connection** %6, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @http_try_x_accel_redirect(%struct.connection* %155, %struct.TYPE_7__* %156, i64 %157, i32 %158, i32 -500, i32* @redirect_retries_content_type)
  store i32 %159, i32* %5, align 4
  br label %256

160:                                              ; preds = %135
  %161 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %162 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %160
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 %176, i32 %181)
  %183 = load %struct.connection*, %struct.connection** %6, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @http_try_x_accel_redirect(%struct.connection* %183, %struct.TYPE_7__* %184, i64 %185, i32 %186, i32 -500, i32* @redirect_retries_local_id)
  store i32 %187, i32* %5, align 4
  br label %256

188:                                              ; preds = %160
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = call i32 @update_binlog_read_stat(%struct.TYPE_7__* %189, i32 1)
  %191 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %192 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %188
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %201, i32 %204, i32 %209)
  store i32 -403, i32* %5, align 4
  br label %256

211:                                              ; preds = %188
  %212 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %213 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %211
  %218 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %219 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 %220, i32 %221, i32 %226, i32 %229, i32 %234)
  store i32 -404, i32* %5, align 4
  br label %256

236:                                              ; preds = %211
  %237 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %238 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %239)
  %241 = load %struct.connection*, %struct.connection** %6, align 8
  %242 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %243 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %247 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %250 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.lev_storage_file*, %struct.lev_storage_file** %10, align 8
  %253 = getelementptr inbounds %struct.lev_storage_file, %struct.lev_storage_file* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @write_http_doc(%struct.connection* %241, i8* %245, i32 %248, i32 %251, i32 %254)
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %236, %217, %196, %168, %140, %109, %83, %49, %24, %13
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @http_try_x_accel_redirect(%struct.connection*, %struct.TYPE_7__*, i64, i32, i32, i32*) #1

declare dso_local i32 @update_binlog_read_stat(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @write_http_doc(%struct.connection*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
