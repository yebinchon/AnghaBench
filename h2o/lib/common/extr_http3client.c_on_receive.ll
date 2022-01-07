; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.st_h2o_http3client_req_t* }
%struct.st_h2o_http3client_req_t = type { i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)*, %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32* }

@H2O_HTTP3_ERROR_EOS = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_FRAME = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i8*, i64)* @on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_receive(%struct.TYPE_16__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.st_h2o_http3client_req_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %22, align 8
  store %struct.st_h2o_http3client_req_t* %23, %struct.st_h2o_http3client_req_t** %10, align 8
  store i8* null, i8** %17, align 8
  %24 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %29, %35
  %37 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %38 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %44, i32 0, i32 2
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = call i32 @quicly_recvstate_transfer_complete(%struct.TYPE_18__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %4
  %51 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %58 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %57, i32 0, i32 2
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %56, %62
  store i64 %63, i64* %13, align 8
  br label %70

64:                                               ; preds = %4
  %65 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %66 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = call i64 @quicly_recvstate_bytes_available(%struct.TYPE_18__* %68)
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %64, %50
  %71 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %80, %81
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %12, align 8
  store i64 0, i64* %14, align 8
  br label %174

90:                                               ; preds = %78, %70
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %91, %92
  %94 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %95 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %93, %97
  store i64 %98, i64* %18, align 8
  %99 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %100 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %18, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %90
  %108 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %109 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load i64, i64* %18, align 8
  %112 = call i32* @h2o_buffer_reserve(%struct.TYPE_13__** %110, i64 %111)
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32* %112, i32** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @H2O_HTTP3_CHECK_SUCCESS(i32 %117)
  %119 = load i64, i64* %18, align 8
  %120 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %121 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %107, %90
  %126 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %127 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %131, %132
  %134 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %135 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %133, %137
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @memcpy(i64 %138, i8* %139, i64 %140)
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %144 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %396

149:                                              ; preds = %125
  %150 = load i64, i64* %13, align 8
  %151 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %152 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ugt i64 %150, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %160 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub i64 %158, %162
  store i64 %163, i64* %14, align 8
  %164 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %165 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %11, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load i64, i64* %14, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %12, align 8
  br label %174

174:                                              ; preds = %149, %84
  %175 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %176 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %210

182:                                              ; preds = %174
  %183 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %184 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i32*, i32** %11, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = ptrtoint i32* %187 to i64
  %190 = ptrtoint i32* %188 to i64
  %191 = sub i64 %189, %190
  %192 = sdiv exact i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i32 @h2o_buffer_append(%struct.TYPE_13__** %185, i32* %186, i32 %193)
  %195 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %196 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  store i32* %201, i32** %11, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %204 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %202, i64 %208
  store i32* %209, i32** %12, align 8
  br label %210

210:                                              ; preds = %182, %174
  %211 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %212 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %211, i32 0, i32 2
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = call i32 @quicly_recvstate_transfer_complete(%struct.TYPE_18__* %214)
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %210
  %219 = load i32*, i32** %11, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = icmp ne i32* %219, %220
  br label %222

222:                                              ; preds = %218, %210
  %223 = phi i1 [ true, %210 ], [ %221, %218 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  br label %226

226:                                              ; preds = %247, %222
  %227 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %228 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %227, i32 0, i32 0
  %229 = load i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)*, i32 (%struct.st_h2o_http3client_req_t*, i32**, i32*, i32, i8**)** %228, align 8
  %230 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i32, i32* @H2O_HTTP3_ERROR_EOS, align 4
  br label %237

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %234
  %238 = phi i32 [ %235, %234 ], [ 0, %236 ]
  %239 = call i32 %229(%struct.st_h2o_http3client_req_t* %230, i32** %11, i32* %231, i32 %238, i8** %17)
  store i32 %239, i32* %16, align 4
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %16, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32*, i32** %11, align 8
  %245 = load i32*, i32** %12, align 8
  %246 = icmp ne i32* %244, %245
  br label %247

247:                                              ; preds = %243, %240
  %248 = phi i1 [ false, %240 ], [ %246, %243 ]
  br i1 %248, label %226, label %249

249:                                              ; preds = %247
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %320

253:                                              ; preds = %249
  %254 = load i32, i32* %15, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* @H2O_HTTP3_ERROR_FRAME, align 4
  store i32 %257, i32* %5, align 4
  br label %396

258:                                              ; preds = %253
  %259 = load i32*, i32** %11, align 8
  %260 = load i32*, i32** %12, align 8
  %261 = icmp ult i32* %259, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %265 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %306

271:                                              ; preds = %258
  %272 = load i32*, i32** %12, align 8
  %273 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %274 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to i32*
  %280 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %281 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i32, i32* %279, i64 %285
  %287 = icmp eq i32* %272, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %291 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 1
  %293 = load i32*, i32** %11, align 8
  %294 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %295 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = inttoptr i64 %299 to i32*
  %301 = ptrtoint i32* %293 to i64
  %302 = ptrtoint i32* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 4
  %305 = call i32 @h2o_buffer_consume(%struct.TYPE_13__** %292, i64 %304)
  br label %319

306:                                              ; preds = %258
  %307 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %308 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load i32*, i32** %11, align 8
  %311 = load i32*, i32** %12, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = ptrtoint i32* %311 to i64
  %314 = ptrtoint i32* %312 to i64
  %315 = sub i64 %313, %314
  %316 = sdiv exact i64 %315, 4
  %317 = trunc i64 %316 to i32
  %318 = call i32 @h2o_buffer_append(%struct.TYPE_13__** %309, i32* %310, i32 %317)
  br label %319

319:                                              ; preds = %306, %271
  br label %320

320:                                              ; preds = %319, %249
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %341

323:                                              ; preds = %320
  %324 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %325 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %324, i32 0, i32 2
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = call i32 @quicly_sendstate_transfer_complete(i32* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %323
  %331 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %332 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %331, i32 0, i32 2
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %332, align 8
  %334 = load i32, i32* @H2O_HTTP3_ERROR_NONE, align 4
  %335 = call i32 @quicly_reset_stream(%struct.TYPE_17__* %333, i32 %334)
  br label %336

336:                                              ; preds = %330, %323
  %337 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %338 = call i32 @detach_stream(%struct.st_h2o_http3client_req_t* %337)
  %339 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %340 = call i32 @destroy_request(%struct.st_h2o_http3client_req_t* %339)
  br label %395

341:                                              ; preds = %320
  %342 = load i32, i32* %16, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %341
  %345 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %346 = load i32, i32* %16, align 4
  %347 = call i32 @close_stream(%struct.st_h2o_http3client_req_t* %345, i32 %346)
  %348 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %349 = call i32 @destroy_request(%struct.st_h2o_http3client_req_t* %348)
  br label %394

350:                                              ; preds = %341
  %351 = load i64, i64* %14, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %355 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 3
  %357 = load i64, i64* %14, align 8
  %358 = call i32 @h2o_buffer_consume(%struct.TYPE_13__** %356, i64 %357)
  br label %359

359:                                              ; preds = %353, %350
  %360 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %361 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %367 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 1
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add i64 %365, %371
  store i64 %372, i64* %20, align 8
  %373 = load i64, i64* %13, align 8
  %374 = load i64, i64* %20, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %393

376:                                              ; preds = %359
  %377 = load i64, i64* %20, align 8
  %378 = load i64, i64* %13, align 8
  %379 = icmp ult i64 %377, %378
  %380 = zext i1 %379 to i32
  %381 = call i32 @assert(i32 %380)
  %382 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %383 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %382, i32 0, i32 2
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %383, align 8
  %385 = load i64, i64* %13, align 8
  %386 = load i64, i64* %20, align 8
  %387 = sub i64 %385, %386
  %388 = call i32 @quicly_stream_sync_recvbuf(%struct.TYPE_17__* %384, i64 %387)
  %389 = load i64, i64* %20, align 8
  %390 = load %struct.st_h2o_http3client_req_t*, %struct.st_h2o_http3client_req_t** %10, align 8
  %391 = getelementptr inbounds %struct.st_h2o_http3client_req_t, %struct.st_h2o_http3client_req_t* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 0
  store i64 %389, i64* %392, align 8
  br label %393

393:                                              ; preds = %376, %359
  br label %394

394:                                              ; preds = %393, %344
  br label %395

395:                                              ; preds = %394, %336
  store i32 0, i32* %5, align 4
  br label %396

396:                                              ; preds = %395, %256, %148
  %397 = load i32, i32* %5, align 4
  ret i32 %397
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(%struct.TYPE_18__*) #1

declare dso_local i64 @quicly_recvstate_bytes_available(%struct.TYPE_18__*) #1

declare dso_local i32 @H2O_HTTP3_CHECK_SUCCESS(i32) #1

declare dso_local i32* @h2o_buffer_reserve(%struct.TYPE_13__**, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @h2o_buffer_append(%struct.TYPE_13__**, i32*, i32) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_13__**, i64) #1

declare dso_local i32 @quicly_sendstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @detach_stream(%struct.st_h2o_http3client_req_t*) #1

declare dso_local i32 @destroy_request(%struct.st_h2o_http3client_req_t*) #1

declare dso_local i32 @close_stream(%struct.st_h2o_http3client_req_t*, i32) #1

declare dso_local i32 @quicly_stream_sync_recvbuf(%struct.TYPE_17__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
