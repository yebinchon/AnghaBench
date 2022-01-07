; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_send_shift.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_on_send_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.st_h2o_http3_server_stream_t* }
%struct.st_h2o_http3_server_stream_t = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, i32*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"unexpected state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @on_send_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_send_shift(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %9, align 8
  store %struct.st_h2o_http3_server_stream_t* %10, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %30, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %40
  store i64 %45, i64* %43, align 8
  br label %224

46:                                               ; preds = %2
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %51 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %46
  %59 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_16__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32*, i32)** %67, align 8
  %69 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %70 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %74, i32 0, i32 3
  %76 = call i32 %68(%struct.TYPE_16__* %73, i32* %75, i32 0)
  br label %77

77:                                               ; preds = %58, %46
  store i64 1, i64* %6, align 8
  br label %78

78:                                               ; preds = %148, %77
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %151

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %82, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %93 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %91, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %81
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %105 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %151

107:                                              ; preds = %81
  %108 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %109 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = sub i64 %117, %116
  store i64 %118, i64* %4, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %121 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %107
  %126 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %127 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_16__*, i32*, i32)*, i32 (%struct.TYPE_16__*, i32*, i32)** %135, align 8
  %137 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %138 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %142
  %144 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %145 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %144, i32 0, i32 3
  %146 = call i32 %136(%struct.TYPE_16__* %143, i32* %145, i32 0)
  br label %147

147:                                              ; preds = %125, %107
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %6, align 8
  br label %78

151:                                              ; preds = %102, %78
  %152 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %153 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %158 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i64, i64* %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %162
  %164 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %165 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %6, align 8
  %170 = sub i64 %168, %169
  %171 = mul i64 %170, 16
  %172 = call i32 @memmove(%struct.TYPE_16__* %156, %struct.TYPE_16__* %163, i64 %171)
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %175 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %178, %173
  store i64 %179, i64* %177, align 8
  %180 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %181 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %6, align 8
  %185 = icmp ule i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %151
  %187 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %188 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  store i64 0, i64* %189, align 8
  br label %197

190:                                              ; preds = %151
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %193 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %195, %191
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %190, %186
  %198 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %199 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %197
  %205 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %206 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  switch i32 %207, label %221 [
    i32 128, label %208
    i32 129, label %214
  ]

208:                                              ; preds = %204
  %209 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %210 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @assert(i32 %212)
  br label %223

214:                                              ; preds = %204
  %215 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %5, align 8
  %216 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %215, i32 0, i32 1
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = call i32 @quicly_sendstate_transfer_complete(i32* %218)
  %220 = call i32 @assert(i32 %219)
  br label %223

221:                                              ; preds = %204
  %222 = call i32 @assert(i32 0)
  br label %223

223:                                              ; preds = %221, %214, %208
  br label %224

224:                                              ; preds = %39, %223, %197
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_16__*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @quicly_sendstate_transfer_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
