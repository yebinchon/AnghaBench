; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_22__, %struct.TYPE_21__*, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.st_h2o_http3_server_conn_t = type { %struct.TYPE_19__, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@H2O_HTTP3_STREAM_TYPE_REQUEST = common dso_local global i32 0, align 4
@H2O_HTTP3_FRAME_TYPE_HEADERS = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_FRAME_UNEXPECTED = common dso_local global i32 0, align 4
@handle_input_expect_data = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INVALID_HEADER_CHAR = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_EARLY_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid Request\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Request Entity Too Large\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"request entity is too large\00", align 1
@H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BEFORE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**)* @handle_input_expect_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input_expect_headers(%struct.st_h2o_http3_server_stream_t* %0, i32** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.st_h2o_http3_server_conn_t*, align 8
  %11 = alloca %struct.TYPE_20__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %19 = call %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t* %18)
  store %struct.st_h2o_http3_server_conn_t* %19, %struct.st_h2o_http3_server_conn_t** %10, align 8
  %20 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @H2O_HTTP3_STREAM_TYPE_REQUEST, align 4
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = call i32 @h2o_http3_read_frame(%struct.TYPE_20__* %11, i32 0, i32 %24, i32** %25, i32* %26, i8** %27)
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @H2O_HTTP3_FRAME_TYPE_HEADERS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %42 [
    i32 128, label %40
  ]

40:                                               ; preds = %37
  %41 = load i32, i32* @H2O_HTTP3_ERROR_FRAME_UNEXPECTED, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

44:                                               ; preds = %32
  %45 = load i32, i32* @handle_input_expect_data, align 4
  %46 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %47 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 3
  %52 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %53 = call %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t* %52)
  %54 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %59 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %68 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %72 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %76 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %80 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %83 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8**, i8*** %9, align 8
  %90 = call i32 @h2o_qpack_parse_request(i32* %51, i32 %57, i32 %62, i32* %66, i32* %70, i32* %74, i32* %78, i32* %81, i32* %12, i64* %84, i32* null, i32* %23, i64* %16, i32 %86, i32 %88, i8** %89)
  store i32 %90, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %44
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @H2O_HTTP2_ERROR_INVALID_HEADER_CHAR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %98 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %97, i32 0, i32 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = call i32 @quicly_recvstate_transfer_complete(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %105 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %104, i32 0, i32 1
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = load i32, i32* @H2O_HTTP3_ERROR_EARLY_RESPONSE, align 4
  %108 = call i32 @quicly_request_stop(%struct.TYPE_21__* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %111 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %110, i32 0, i32 0
  %112 = load i8**, i8*** %9, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @h2o_send_error_400(%struct.TYPE_22__* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %113, i32 0)
  %115 = load i8**, i8*** %9, align 8
  store i8* null, i8** %115, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

116:                                              ; preds = %92
  br label %117

117:                                              ; preds = %116, %44
  %118 = load i64, i64* %16, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %10, align 8
  %122 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %121, i32 0, i32 1
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @h2o_http3_send_qpack_header_ack(%struct.TYPE_13__* %122, i32* %23, i64 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %127 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SIZE_MAX, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %166

132:                                              ; preds = %125
  %133 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %134 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %10, align 8
  %138 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %136, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %132
  %147 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %148 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %147, i32 0, i32 1
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = call i32 @quicly_recvstate_transfer_complete(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %146
  %154 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %155 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %154, i32 0, i32 1
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = load i32, i32* @H2O_HTTP3_ERROR_EARLY_RESPONSE, align 4
  %158 = call i32 @quicly_request_stop(%struct.TYPE_21__* %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %146
  %160 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %161 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS, align 4
  %162 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %160, i32 %161)
  %163 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %164 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %163, i32 0, i32 0
  %165 = call i32 @h2o_send_error_413(%struct.TYPE_22__* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

166:                                              ; preds = %132, %125
  %167 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %168 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BEFORE_BLOCK, align 4
  %169 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %167, i32 %168)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %170

170:                                              ; preds = %166, %159, %109, %43, %40, %30
  %171 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @h2o_http3_read_frame(%struct.TYPE_20__*, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @h2o_qpack_parse_request(i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i64*, i32, i32, i8**) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_request_stop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @h2o_send_error_400(%struct.TYPE_22__*, i8*, i8*, i32) #1

declare dso_local i32 @h2o_http3_send_qpack_header_ack(%struct.TYPE_13__*, i32*, i64) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

declare dso_local i32 @h2o_send_error_413(%struct.TYPE_22__*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
