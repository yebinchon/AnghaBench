; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_handle_stdin_record.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_handle_stdin_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_generator_t = type { i32, %struct.TYPE_13__, %struct.TYPE_15__*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.st_fcgi_record_header_t = type { i64 }
%struct.phr_header = type { i32 }
%struct.TYPE_16__ = type { i32 }

@FCGI_RECORD_HEADER_SIZE = common dso_local global i64 0, align 8
@MODULE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"received broken response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_fcgi_generator_t*, %struct.st_fcgi_record_header_t*)* @handle_stdin_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stdin_record(%struct.st_fcgi_generator_t* %0, %struct.st_fcgi_record_header_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_fcgi_generator_t*, align 8
  %5 = alloca %struct.st_fcgi_record_header_t*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca [100 x %struct.phr_header], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca i64, align 8
  store %struct.st_fcgi_generator_t* %0, %struct.st_fcgi_generator_t** %4, align 8
  store %struct.st_fcgi_record_header_t* %1, %struct.st_fcgi_record_header_t** %5, align 8
  %14 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %14, i32 0, i32 5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %20 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %237

24:                                               ; preds = %2
  %25 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %26 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %37 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @append_content(%struct.st_fcgi_generator_t* %30, i64 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %43 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %42, i32 0, i32 2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = load i32, i32* @MODULE_NAME, align 4
  %46 = call i32 @h2o_req_log_error(%struct.TYPE_15__* %44, i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

47:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %237

48:                                               ; preds = %24
  store i64 100, i64* %8, align 8
  %49 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %50 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %63 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [100 x %struct.phr_header], [100 x %struct.phr_header]* %7, i64 0, i64 0
  %66 = call i32 @phr_parse_headers(i64 %61, i64 %64, %struct.phr_header* %65, i64* %8, i64 0)
  store i32 %66, i32* %9, align 4
  br label %118

67:                                               ; preds = %48
  %68 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %69 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  %74 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %75 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %78 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @h2o_buffer_reserve(%struct.TYPE_17__** %76, i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %90 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @memcpy(i32 %83, i64 %88, i64 %91)
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %95 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %99 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store i64 %97, i64* %102, align 8
  %103 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %104 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %110 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds [100 x %struct.phr_header], [100 x %struct.phr_header]* %7, i64 0, i64 0
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @phr_parse_headers(i64 %108, i64 %114, %struct.phr_header* %115, i64* %8, i64 %116)
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %67, %56
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, -2
  br i1 %123, label %124, label %161

124:                                              ; preds = %121
  %125 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %126 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %124
  %133 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %134 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %137 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @h2o_buffer_reserve(%struct.TYPE_17__** %135, i64 %138)
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %149 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @memcpy(i32 %142, i64 %147, i64 %150)
  %152 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %153 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %156 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  store i64 %154, i64* %159, align 8
  br label %160

160:                                              ; preds = %132, %124
  store i32 0, i32* %3, align 4
  br label %237

161:                                              ; preds = %121
  %162 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %163 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %162, i32 0, i32 2
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load i32, i32* @MODULE_NAME, align 4
  %166 = call i32 @h2o_req_log_error(%struct.TYPE_15__* %164, i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

167:                                              ; preds = %118
  %168 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %169 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %168, i32 0, i32 2
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds [100 x %struct.phr_header], [100 x %struct.phr_header]* %7, i64 0, i64 0
  %172 = load i64, i64* %8, align 8
  %173 = call i64 @fill_headers(%struct.TYPE_15__* %170, %struct.phr_header* %171, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 -1, i32* %3, align 4
  br label %237

176:                                              ; preds = %167
  %177 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %178 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %177, i32 0, i32 2
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %184 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %186 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %185, i32 0, i32 2
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %189 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %188, i32 0, i32 3
  %190 = call i32 @h2o_start_response(%struct.TYPE_15__* %187, i32* %189)
  %191 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %192 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  %193 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %194 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %176
  %201 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %5, align 8
  %202 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = sub i64 %203, %205
  store i64 %206, i64* %13, align 8
  %207 = load i64, i64* %13, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %200
  %210 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @FCGI_RECORD_HEADER_SIZE, align 8
  %215 = add nsw i64 %213, %214
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  %219 = load i64, i64* %13, align 8
  %220 = call i64 @append_content(%struct.st_fcgi_generator_t* %210, i64 %218, i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %209
  %223 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %224 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %223, i32 0, i32 2
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = load i32, i32* @MODULE_NAME, align 4
  %227 = call i32 @h2o_req_log_error(%struct.TYPE_15__* %225, i32 %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %237

228:                                              ; preds = %209
  br label %229

229:                                              ; preds = %228, %200
  br label %236

230:                                              ; preds = %176
  %231 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %4, align 8
  %232 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @h2o_buffer_consume(%struct.TYPE_17__** %233, i32 %234)
  br label %236

236:                                              ; preds = %230, %229
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %222, %175, %161, %160, %47, %41, %23
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i64 @append_content(%struct.st_fcgi_generator_t*, i64, i64) #1

declare dso_local i32 @h2o_req_log_error(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @phr_parse_headers(i64, i64, %struct.phr_header*, i64*, i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_17__**, i64) #1

declare dso_local i64 @fill_headers(%struct.TYPE_15__*, %struct.phr_header*, i64) #1

declare dso_local i32 @h2o_start_response(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_17__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
