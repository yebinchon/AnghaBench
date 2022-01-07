; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_chunked.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.st_h2o_http1client_t* }
%struct.st_h2o_http1client_t = type { i32, %struct.TYPE_14__, i64, %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_14__*, i8*)* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64 }

@h2o_socket_error_closed = common dso_local global i8* null, align 8
@STREAM_STATE_CLOSED = common dso_local global i64 0, align 8
@h2o_httpclient_error_is_eos = common dso_local global i8* null, align 8
@h2o_httpclient_error_io = common dso_local global i32 0, align 4
@h2o_httpclient_error_http1_parse_failed = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i8*)* @on_body_chunked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_body_chunked(%struct.TYPE_22__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1client_t*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %11, align 8
  store %struct.st_h2o_http1client_t* %12, %struct.st_h2o_http1client_t** %5, align 8
  %13 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call i32 @h2o_timer_unlink(i32* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** @h2o_socket_error_closed, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = call i32 @phr_decode_chunked_is_in_data(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %23
  %31 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %39 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @h2o_gettimeofday(i32 %47)
  %49 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %54 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %56, align 8
  %58 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %58, i32 0, i32 1
  %60 = load i8*, i8** @h2o_httpclient_error_is_eos, align 8
  %61 = call i32 %57(%struct.TYPE_14__* %59, i8* %60)
  %62 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %63 = call i32 @close_response(%struct.st_h2o_http1client_t* %62)
  br label %68

64:                                               ; preds = %30, %23, %19
  %65 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %66 = load i32, i32* @h2o_httpclient_error_io, align 4
  %67 = call i32 @on_error(%struct.st_h2o_http1client_t* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %35
  br label %198

69:                                               ; preds = %2
  %70 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %71 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %70, i32 0, i32 5
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %6, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %181

79:                                               ; preds = %69
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = load i64, i64* %9, align 8
  %95 = sub i64 %93, %94
  %96 = call i32 @phr_decode_chunked(i32* %86, i64 %95, i64* %9)
  switch i32 %96, label %105 [
    i32 -1, label %97
    i32 -2, label %104
    i32 0, label %108
  ]

97:                                               ; preds = %79
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  %101 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %102 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load i8*, i8** @h2o_httpclient_error_http1_parse_failed, align 8
  store i8* %103, i8** %7, align 8
  br label %125

104:                                              ; preds = %79
  store i8* null, i8** %7, align 8
  br label %125

105:                                              ; preds = %79
  %106 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %107 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %79, %105
  %109 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %110 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %111 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i8*, i8** @h2o_httpclient_error_is_eos, align 8
  store i8* %113, i8** %7, align 8
  %114 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %115 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @h2o_gettimeofday(i32 %119)
  %121 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %122 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i8* %120, i8** %124, align 8
  br label %125

125:                                              ; preds = %108, %104, %97
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = sub i64 %128, %129
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %141 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %125
  %143 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %144 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %146, align 8
  %148 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %149 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %148, i32 0, i32 1
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 %147(%struct.TYPE_14__* %149, i8* %150)
  store i32 %151, i32* %8, align 4
  %152 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %153 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %142
  %159 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %160 = call i32 @close_response(%struct.st_h2o_http1client_t* %159)
  br label %198

161:                                              ; preds = %142
  %162 = load i8*, i8** %7, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %166 = call i32 @close_client(%struct.st_h2o_http1client_t* %165)
  br label %198

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %172 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %174 = call i32 @close_client(%struct.st_h2o_http1client_t* %173)
  br label %198

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %179 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %178, i32 0, i32 1
  %180 = call i32 @do_update_window(%struct.TYPE_14__* %179)
  br label %181

181:                                              ; preds = %177, %69
  %182 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %183 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %189 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %195 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = call i32 @h2o_timer_link(i32 %187, i32 %193, i32* %196)
  br label %198

198:                                              ; preds = %181, %170, %164, %158, %68
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @phr_decode_chunked_is_in_data(i32*) #1

declare dso_local i8* @h2o_gettimeofday(i32) #1

declare dso_local i32 @close_response(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @on_error(%struct.st_h2o_http1client_t*, i32) #1

declare dso_local i32 @phr_decode_chunked(i32*, i64, i64*) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @do_update_window(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
