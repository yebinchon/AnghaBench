; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_buffered_input.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_buffered_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_15__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*, %struct.TYPE_16__* }
%struct.st_h2o_http3_server_stream_t.0 = type opaque
%struct.TYPE_16__ = type { i64, i64 }
%struct.st_h2o_http3_server_conn_t = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@H2O_HTTP3_ERROR_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_GENERAL_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unexpected state\00", align 1
@H2O_HTTP3_SERVER_STREAM_STATE_REQ_PENDING = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_REQUEST_INCOMPLETE = common dso_local global i32 0, align 4
@H2O_HTTP3_REQUEST_BODY_MIN_BYTES_TO_BLOCK = common dso_local global i64 0, align 8
@H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3_server_stream_t*, i8**)* @handle_buffered_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_buffered_input(%struct.st_h2o_http3_server_stream_t* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.st_h2o_http3_server_conn_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %13 = call %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t* %12)
  store %struct.st_h2o_http3_server_conn_t* %13, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %14 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %14, i32 0, i32 5
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = call i64 @quicly_recvstate_bytes_available(i32* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ule i64 %19, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %30 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %39 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %39, i32 0, i32 5
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = call i64 @quicly_stop_requested(%struct.TYPE_15__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %8, align 8
  br label %73

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*, i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)** %54, align 8
  %56 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %57 = bitcast %struct.st_h2o_http3_server_stream_t* %56 to %struct.st_h2o_http3_server_stream_t.0*
  %58 = load i32*, i32** %9, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = call i32 %55(%struct.st_h2o_http3_server_stream_t.0* %57, i32** %8, i32* %58, i8** %59)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %72

63:                                               ; preds = %51
  %64 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %64, i32 0, i32 5
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i64 @quicly_stop_requested(%struct.TYPE_15__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32*, i32** %9, align 8
  store i32* %70, i32** %8, align 8
  br label %72

71:                                               ; preds = %63
  br label %47

72:                                               ; preds = %69, %62, %47
  br label %73

73:                                               ; preds = %72, %44
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %326

82:                                               ; preds = %76, %73
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %85 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = ptrtoint i32* %83 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  store i64 %94, i64* %11, align 8
  %95 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %96 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @h2o_buffer_consume(%struct.TYPE_16__** %97, i64 %98)
  %100 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %101 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %100, i32 0, i32 5
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @quicly_stream_sync_recvbuf(%struct.TYPE_15__* %102, i64 %103)
  %105 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %106 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %105, i32 0, i32 5
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = call i64 @quicly_stop_requested(%struct.TYPE_15__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %326

111:                                              ; preds = %82
  %112 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %113 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %112, i32 0, i32 5
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = call i64 @quicly_recvstate_transfer_complete(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %262

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %128 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %127, i32 0, i32 5
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  %131 = call i32 @quicly_reset_stream(%struct.TYPE_15__* %129, i32 %130)
  %132 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %133 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %134 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %132, i32 %133)
  br label %261

135:                                              ; preds = %118
  %136 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %137 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %251

143:                                              ; preds = %135
  %144 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %145 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*, i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)** %146, align 8
  %148 = icmp eq i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)* %147, bitcast (i32 (%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**)* @handle_input_expect_data to i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*)
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %151 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*, i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)** %152, align 8
  %154 = icmp eq i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)* %153, bitcast (i32 (%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**)* @handle_input_post_trailers to i32 (%struct.st_h2o_http3_server_stream_t.0*, i32**, i32*, i8**)*)
  br i1 %154, label %155, label %251

155:                                              ; preds = %149, %143
  %156 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %157 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SIZE_MAX, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %155
  %163 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %164 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %168 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %166, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %162
  %173 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %174 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %173, i32 0, i32 5
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %177 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %181 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %179, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %172
  %186 = load i32, i32* @H2O_HTTP3_ERROR_INCOMPLETE, align 4
  br label %189

187:                                              ; preds = %172
  %188 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = call i32 @quicly_reset_stream(%struct.TYPE_15__* %175, i32 %190)
  %192 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %193 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %194 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %192, i32 %193)
  br label %250

195:                                              ; preds = %162, %155
  %196 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %197 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %217

202:                                              ; preds = %195
  %203 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %204 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %203, i32 0, i32 2
  %205 = call i32 @h2o_linklist_is_linked(i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %209 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %212 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %211, i32 0, i32 2
  %213 = call i32 @h2o_linklist_insert(i32* %210, i32* %212)
  br label %214

214:                                              ; preds = %207, %202
  %215 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %216 = call i32 @request_run_delayed(%struct.st_h2o_http3_server_conn_t* %215)
  br label %249

217:                                              ; preds = %195
  %218 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %219 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %248, label %223

223:                                              ; preds = %217
  %224 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %225 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %248

229:                                              ; preds = %223
  %230 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %231 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  switch i32 %232, label %234 [
    i32 128, label %233
    i32 130, label %233
    i32 129, label %233
  ]

233:                                              ; preds = %229, %229, %229
  br label %236

234:                                              ; preds = %229
  %235 = call i32 @assert(i32 0)
  br label %236

236:                                              ; preds = %234, %233
  %237 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %238 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_REQ_PENDING, align 4
  %239 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %237, i32 %238)
  %240 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %241 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %244 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %243, i32 0, i32 2
  %245 = call i32 @h2o_linklist_insert(i32* %242, i32* %244)
  %246 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %247 = call i32 @request_run_delayed(%struct.st_h2o_http3_server_conn_t* %246)
  br label %248

248:                                              ; preds = %236, %223, %217
  br label %249

249:                                              ; preds = %248, %214
  br label %250

250:                                              ; preds = %249, %189
  br label %260

251:                                              ; preds = %149, %135
  %252 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %253 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %252, i32 0, i32 5
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = load i32, i32* @H2O_HTTP3_ERROR_REQUEST_INCOMPLETE, align 4
  %256 = call i32 @quicly_reset_stream(%struct.TYPE_15__* %254, i32 %255)
  %257 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %258 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT, align 4
  %259 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %257, i32 %258)
  br label %260

260:                                              ; preds = %251, %250
  br label %261

261:                                              ; preds = %260, %121
  br label %325

262:                                              ; preds = %111
  %263 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %264 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 130
  br i1 %266, label %267, label %294

267:                                              ; preds = %262
  %268 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %269 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %268, i32 0, i32 3
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = icmp ne %struct.TYPE_13__* %270, null
  br i1 %271, label %272, label %294

272:                                              ; preds = %267
  %273 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %274 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %273, i32 0, i32 3
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @H2O_HTTP3_REQUEST_BODY_MIN_BYTES_TO_BLOCK, align 8
  %279 = icmp sge i64 %277, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %272
  %281 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %282 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  %283 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %284 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %287 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %286, i32 0, i32 2
  %288 = call i32 @h2o_linklist_insert(i32* %285, i32* %287)
  %289 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %290 = load i32, i32* @H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BLOCKED, align 4
  %291 = call i32 @set_state(%struct.st_h2o_http3_server_stream_t* %289, i32 %290)
  %292 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %293 = call i32 @check_run_blocked(%struct.st_h2o_http3_server_conn_t* %292)
  br label %324

294:                                              ; preds = %272, %267, %262
  %295 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %296 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %323

301:                                              ; preds = %294
  %302 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %303 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %302, i32 0, i32 3
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %301
  %309 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %310 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %309, i32 0, i32 2
  %311 = call i32 @h2o_linklist_is_linked(i32* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %308
  %314 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %315 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %4, align 8
  %318 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %317, i32 0, i32 2
  %319 = call i32 @h2o_linklist_insert(i32* %316, i32* %318)
  br label %320

320:                                              ; preds = %313, %308
  %321 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %6, align 8
  %322 = call i32 @request_run_delayed(%struct.st_h2o_http3_server_conn_t* %321)
  br label %323

323:                                              ; preds = %320, %301, %294
  br label %324

324:                                              ; preds = %323, %280
  br label %325

325:                                              ; preds = %324, %261
  store i32 0, i32* %3, align 4
  br label %326

326:                                              ; preds = %325, %110, %80
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t*) #1

declare dso_local i64 @quicly_recvstate_bytes_available(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @quicly_stop_requested(%struct.TYPE_15__*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_16__**, i64) #1

declare dso_local i32 @quicly_stream_sync_recvbuf(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @set_state(%struct.st_h2o_http3_server_stream_t*, i32) #1

declare dso_local i32 @handle_input_expect_data(%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**) #1

declare dso_local i32 @handle_input_post_trailers(%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**) #1

declare dso_local i32 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_insert(i32*, i32*) #1

declare dso_local i32 @request_run_delayed(%struct.st_h2o_http3_server_conn_t*) #1

declare dso_local i32 @check_run_blocked(%struct.st_h2o_http3_server_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
