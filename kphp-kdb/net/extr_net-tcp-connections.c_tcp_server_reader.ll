; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_server_reader.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-connections.c_tcp_server_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.msg_buffer = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.connection = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_10__*, i64, i64, %struct.raw_message, %struct.raw_message }
%struct.TYPE_10__ = type { i64 (%struct.connection*)*, i64 (%struct.connection*)*, {}* }
%struct.raw_message = type { i64, i32, %struct.msg_part*, i64, %struct.msg_part* }
%struct.msg_part = type { i32, i32, %struct.msg_part*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@C_WANTRD = common dso_local global i32 0, align 4
@C_NORD = common dso_local global i32 0, align 4
@C_FAILED = common dso_local global i32 0, align 4
@C_STOPREAD = common dso_local global i32 0, align 4
@C_REPARSE = common dso_local global i32 0, align 4
@conn_expect_query = common dso_local global i32 0, align 4
@conn_reading_query = common dso_local global i32 0, align 4
@conn_wait_answer = common dso_local global i32 0, align 4
@conn_reading_answer = common dso_local global i32 0, align 4
@conn_write_close = common dso_local global i32 0, align 4
@tcp_recv_buffers_num = common dso_local global i32 0, align 4
@ct_pipe = common dso_local global i64 0, align 8
@tcp_recv_buffers_total_size = common dso_local global i32 0, align 4
@tcp_recv_iovec = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_TCP_RECV_BUFFERS = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"recv() from %d: %d read out of %d. Crypto = %d\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"recv()\00", align 1
@tcp_recv_buffers = common dso_local global %struct.msg_buffer** null, align 8
@TCP_RECV_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"**FATAL**: cannot allocate udp receive buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"skipped %d bytes, %d more to skip\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"fetched %d bytes, %d available bytes, %d more to load\0A\00", align 1
@NEED_MORE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_server_reader(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.raw_message*, align 8
  %9 = alloca %struct.raw_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msg_part*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.msg_buffer*, align 8
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %4, align 4
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.connection*, %struct.connection** %3, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 10
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 9
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi %struct.raw_message* [ %24, %22 ], [ %27, %25 ]
  store %struct.raw_message* %29, %struct.raw_message** %8, align 8
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 9
  store %struct.raw_message* %31, %struct.raw_message** %9, align 8
  br label %32

32:                                               ; preds = %28, %612, %639, %806
  %33 = load %struct.connection*, %struct.connection** %3, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @C_WANTRD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @C_NORD, align 4
  %44 = load i32, i32* @C_FAILED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @C_STOPREAD, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load %struct.connection*, %struct.connection** %3, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %39, %32
  %57 = phi i1 [ false, %39 ], [ false, %32 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @C_REPARSE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %56
  %66 = load %struct.connection*, %struct.connection** %3, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @conn_expect_query, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %89, label %71

71:                                               ; preds = %65
  %72 = load %struct.connection*, %struct.connection** %3, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @conn_reading_query, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = load %struct.connection*, %struct.connection** %3, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @conn_wait_answer, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.connection*, %struct.connection** %3, align 8
  %85 = getelementptr inbounds %struct.connection, %struct.connection* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @conn_reading_answer, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83, %77, %71, %65
  %90 = load %struct.connection*, %struct.connection** %3, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %89, %83, %56
  %96 = phi i1 [ false, %83 ], [ false, %56 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %807

104:                                              ; preds = %100, %95
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %643

107:                                              ; preds = %104
  %108 = load %struct.connection*, %struct.connection** %3, align 8
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @conn_write_close, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.connection*, %struct.connection** %3, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 9
  %116 = call i32 @rwm_clear(%struct.raw_message* %115)
  %117 = load %struct.connection*, %struct.connection** %3, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 10
  %119 = call i32 @rwm_clear(%struct.raw_message* %118)
  %120 = load i32, i32* @C_WANTRD, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.connection*, %struct.connection** %3, align 8
  %123 = getelementptr inbounds %struct.connection, %struct.connection* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %807

126:                                              ; preds = %107
  %127 = load i32, i32* @tcp_recv_buffers_num, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = call i32 (...) @prealloc_tcp_buffers()
  br label %131

131:                                              ; preds = %129, %126
  %132 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %133 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %132, i32 0, i32 2
  %134 = load %struct.msg_part*, %struct.msg_part** %133, align 8
  %135 = icmp ne %struct.msg_part* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %138 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %137, i32 0, i32 2
  %139 = load %struct.msg_part*, %struct.msg_part** %138, align 8
  %140 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %139, i32 0, i32 2
  %141 = load %struct.msg_part*, %struct.msg_part** %140, align 8
  %142 = icmp ne %struct.msg_part* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %145 = call i32 @fork_message_chain(%struct.raw_message* %144)
  br label %146

146:                                              ; preds = %143, %136, %131
  %147 = load %struct.connection*, %struct.connection** %3, align 8
  %148 = getelementptr inbounds %struct.connection, %struct.connection* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ct_pipe, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %221

152:                                              ; preds = %146
  %153 = load i32, i32* @tcp_recv_buffers_total_size, align 4
  store i32 %153, i32* %7, align 4
  %154 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %155 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %154, i32 0, i32 2
  %156 = load %struct.msg_part*, %struct.msg_part** %155, align 8
  %157 = icmp ne %struct.msg_part* %156, null
  br i1 %157, label %158, label %206

158:                                              ; preds = %152
  %159 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %160 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %163 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %162, i32 0, i32 2
  %164 = load %struct.msg_part*, %struct.msg_part** %163, align 8
  %165 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %164, i32 0, i32 3
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %161, %170
  br i1 %171, label %172, label %206

172:                                              ; preds = %158
  %173 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %174 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %173, i32 0, i32 2
  %175 = load %struct.msg_part*, %struct.msg_part** %174, align 8
  %176 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %175, i32 0, i32 3
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %183 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %181, %184
  %186 = trunc i64 %185 to i32
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  %190 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %191 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %190, i32 0, i32 2
  %192 = load %struct.msg_part*, %struct.msg_part** %191, align 8
  %193 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %192, i32 0, i32 3
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %199 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = trunc i64 %201 to i32
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 4
  store i32 0, i32* %12, align 4
  br label %207

206:                                              ; preds = %158, %152
  store i32 1, i32* %12, align 4
  br label %207

207:                                              ; preds = %206, %172
  %208 = load %struct.connection*, %struct.connection** %3, align 8
  %209 = getelementptr inbounds %struct.connection, %struct.connection* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = load i64, i64* @MAX_TCP_RECV_BUFFERS, align 8
  %216 = add nsw i64 %215, 1
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = sub nsw i64 %216, %218
  %220 = call i32 @readv(i32 %210, %struct.TYPE_11__* %214, i64 %219)
  store i32 %220, i32* %5, align 4
  br label %238

221:                                              ; preds = %146
  store i32 1, i32* %12, align 4
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %7, align 4
  %226 = load %struct.connection*, %struct.connection** %3, align 8
  %227 = getelementptr inbounds %struct.connection, %struct.connection* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @read(i32 %228, i32 %232, i32 %236)
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %221, %207
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %7, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = load i32, i32* @C_NORD, align 4
  %244 = load %struct.connection*, %struct.connection** %3, align 8
  %245 = getelementptr inbounds %struct.connection, %struct.connection* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %238
  %249 = load i32, i32* @verbosity, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %248
  %252 = load i32, i32* @stderr, align 4
  %253 = load %struct.connection*, %struct.connection** %3, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.connection*, %struct.connection** %3, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i32
  %263 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %255, i32 %256, i32 %257, i32 %262)
  %264 = load i32, i32* %5, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %251
  %267 = load i64, i64* @errno, align 8
  %268 = load i64, i64* @EAGAIN, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %266, %251
  br label %273

273:                                              ; preds = %272, %248
  %274 = load i32, i32* %5, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %642

276:                                              ; preds = %273
  store %struct.msg_part* null, %struct.msg_part** %13, align 8
  %277 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %278 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %277, i32 0, i32 2
  %279 = load %struct.msg_part*, %struct.msg_part** %278, align 8
  %280 = icmp ne %struct.msg_part* %279, null
  br i1 %280, label %358, label %281

281:                                              ; preds = %276
  %282 = load i32, i32* %12, align 4
  %283 = icmp eq i32 %282, 1
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load %struct.msg_buffer**, %struct.msg_buffer*** @tcp_recv_buffers, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.msg_buffer*, %struct.msg_buffer** %286, i64 %289
  %291 = load %struct.msg_buffer*, %struct.msg_buffer** %290, align 8
  %292 = call %struct.msg_part* @new_msg_part(i32 0, %struct.msg_buffer* %291)
  store %struct.msg_part* %292, %struct.msg_part** %13, align 8
  %293 = load %struct.msg_buffer**, %struct.msg_buffer*** @tcp_recv_buffers, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.msg_buffer*, %struct.msg_buffer** %293, i64 %296
  %298 = load %struct.msg_buffer*, %struct.msg_buffer** %297, align 8
  %299 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %300, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @assert(i32 %308)
  %310 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %311 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %310, i32 0, i32 0
  store i32 0, i32* %311, align 8
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %312, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %281
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  br label %329

327:                                              ; preds = %281
  %328 = load i32, i32* %5, align 4
  br label %329

329:                                              ; preds = %327, %320
  %330 = phi i32 [ %326, %320 ], [ %328, %327 ]
  %331 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %332 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %334 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %5, align 4
  %337 = sub nsw i32 %336, %335
  store i32 %337, i32* %5, align 4
  %338 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %339 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %340 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %339, i32 0, i32 2
  store %struct.msg_part* %338, %struct.msg_part** %340, align 8
  %341 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %342 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %341, i32 0, i32 4
  store %struct.msg_part* %338, %struct.msg_part** %342, align 8
  %343 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %344 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %347 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 8
  %348 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %349 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %348, i32 0, i32 3
  store i64 0, i64* %349, align 8
  %350 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %351 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %355 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %354, i32 0, i32 0
  store i64 %353, i64* %355, align 8
  %356 = load i32, i32* %12, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %12, align 4
  br label %419

358:                                              ; preds = %276
  %359 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %360 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %359, i32 0, i32 2
  %361 = load %struct.msg_part*, %struct.msg_part** %360, align 8
  %362 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %365 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %364, i32 0, i32 2
  %366 = load %struct.msg_part*, %struct.msg_part** %365, align 8
  %367 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %363, %368
  %370 = sext i32 %369 to i64
  %371 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %372 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %370, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @assert(i32 %375)
  %377 = load i32, i32* %12, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %418

379:                                              ; preds = %358
  %380 = load i32, i32* %5, align 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i64 0
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = icmp sgt i32 %380, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %379
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i64 0
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  br label %393

391:                                              ; preds = %379
  %392 = load i32, i32* %5, align 4
  br label %393

393:                                              ; preds = %391, %386
  %394 = phi i32 [ %390, %386 ], [ %392, %391 ]
  store i32 %394, i32* %14, align 4
  %395 = load i32, i32* %14, align 4
  %396 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %397 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %396, i32 0, i32 2
  %398 = load %struct.msg_part*, %struct.msg_part** %397, align 8
  %399 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, %395
  store i32 %401, i32* %399, align 4
  %402 = load i32, i32* %14, align 4
  %403 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %404 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = add nsw i32 %405, %402
  store i32 %406, i32* %404, align 8
  %407 = load i32, i32* %14, align 4
  %408 = sext i32 %407 to i64
  %409 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %410 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = add nsw i64 %411, %408
  store i64 %412, i64* %410, align 8
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* %5, align 4
  %415 = sub nsw i32 %414, %413
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %12, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %12, align 4
  br label %418

418:                                              ; preds = %393, %358
  br label %419

419:                                              ; preds = %418, %329
  %420 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %421 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %420, i32 0, i32 2
  %422 = load %struct.msg_part*, %struct.msg_part** %421, align 8
  %423 = icmp ne %struct.msg_part* %422, null
  br i1 %423, label %424, label %432

424:                                              ; preds = %419
  %425 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %426 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %425, i32 0, i32 2
  %427 = load %struct.msg_part*, %struct.msg_part** %426, align 8
  %428 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %427, i32 0, i32 2
  %429 = load %struct.msg_part*, %struct.msg_part** %428, align 8
  %430 = icmp ne %struct.msg_part* %429, null
  %431 = xor i1 %430, true
  br label %432

432:                                              ; preds = %424, %419
  %433 = phi i1 [ false, %419 ], [ %431, %424 ]
  %434 = zext i1 %433 to i32
  %435 = call i32 @assert(i32 %434)
  br label %436

436:                                              ; preds = %466, %432
  %437 = load i32, i32* %5, align 4
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %502

439:                                              ; preds = %436
  %440 = load %struct.msg_buffer**, %struct.msg_buffer*** @tcp_recv_buffers, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sub nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.msg_buffer*, %struct.msg_buffer** %440, i64 %443
  %445 = load %struct.msg_buffer*, %struct.msg_buffer** %444, align 8
  %446 = call %struct.msg_part* @new_msg_part(i32 0, %struct.msg_buffer* %445)
  store %struct.msg_part* %446, %struct.msg_part** %13, align 8
  %447 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %448 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %447, i32 0, i32 0
  store i32 0, i32* %448, align 8
  %449 = load i32, i32* %5, align 4
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %451 = load i32, i32* %12, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp sgt i32 %449, %455
  br i1 %456, label %457, label %464

457:                                              ; preds = %439
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  br label %466

464:                                              ; preds = %439
  %465 = load i32, i32* %5, align 4
  br label %466

466:                                              ; preds = %464, %457
  %467 = phi i32 [ %463, %457 ], [ %465, %464 ]
  %468 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %469 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %468, i32 0, i32 1
  store i32 %467, i32* %469, align 4
  %470 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %471 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* %5, align 4
  %474 = sub nsw i32 %473, %472
  store i32 %474, i32* %5, align 4
  %475 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %476 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %477 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %476, i32 0, i32 2
  %478 = load %struct.msg_part*, %struct.msg_part** %477, align 8
  %479 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %478, i32 0, i32 2
  store %struct.msg_part* %475, %struct.msg_part** %479, align 8
  %480 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %481 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %482 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %481, i32 0, i32 2
  store %struct.msg_part* %480, %struct.msg_part** %482, align 8
  %483 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %484 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %487 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %485, %488
  %490 = sext i32 %489 to i64
  %491 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %492 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %491, i32 0, i32 0
  store i64 %490, i64* %492, align 8
  %493 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %494 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.raw_message*, %struct.raw_message** %8, align 8
  %497 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = add nsw i32 %498, %495
  store i32 %499, i32* %497, align 8
  %500 = load i32, i32* %12, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %12, align 4
  br label %436

502:                                              ; preds = %436
  %503 = load i32, i32* %5, align 4
  %504 = icmp ne i32 %503, 0
  %505 = xor i1 %504, true
  %506 = zext i1 %505 to i32
  %507 = call i32 @assert(i32 %506)
  store i32 0, i32* %15, align 4
  br label %508

508:                                              ; preds = %552, %502
  %509 = load i32, i32* %15, align 4
  %510 = load i32, i32* %12, align 4
  %511 = sub nsw i32 %510, 1
  %512 = icmp slt i32 %509, %511
  br i1 %512, label %513, label %555

513:                                              ; preds = %508
  %514 = load %struct.msg_buffer**, %struct.msg_buffer*** @tcp_recv_buffers, align 8
  %515 = load i32, i32* %15, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.msg_buffer*, %struct.msg_buffer** %514, i64 %516
  %518 = load %struct.msg_buffer*, %struct.msg_buffer** %517, align 8
  %519 = load i32, i32* @TCP_RECV_BUFFER_SIZE, align 4
  %520 = call %struct.msg_buffer* @alloc_msg_buffer(%struct.msg_buffer* %518, i32 %519)
  store %struct.msg_buffer* %520, %struct.msg_buffer** %16, align 8
  %521 = load %struct.msg_buffer*, %struct.msg_buffer** %16, align 8
  %522 = icmp ne %struct.msg_buffer* %521, null
  br i1 %522, label %526, label %523

523:                                              ; preds = %513
  %524 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %525 = call i32 @exit(i32 2) #3
  unreachable

526:                                              ; preds = %513
  %527 = load %struct.msg_buffer*, %struct.msg_buffer** %16, align 8
  %528 = load %struct.msg_buffer**, %struct.msg_buffer*** @tcp_recv_buffers, align 8
  %529 = load i32, i32* %15, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.msg_buffer*, %struct.msg_buffer** %528, i64 %530
  store %struct.msg_buffer* %527, %struct.msg_buffer** %531, align 8
  %532 = load %struct.msg_buffer*, %struct.msg_buffer** %16, align 8
  %533 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %536 = load i32, i32* %15, align 4
  %537 = add nsw i32 %536, 1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %539, i32 0, i32 1
  store i32 %534, i32* %540, align 4
  %541 = load %struct.msg_buffer*, %struct.msg_buffer** %16, align 8
  %542 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %541, i32 0, i32 1
  %543 = load %struct.TYPE_9__*, %struct.TYPE_9__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_11__*, %struct.TYPE_11__** @tcp_recv_iovec, align 8
  %547 = load i32, i32* %15, align 4
  %548 = add nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 0
  store i32 %545, i32* %551, align 4
  br label %552

552:                                              ; preds = %526
  %553 = load i32, i32* %15, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %15, align 4
  br label %508

555:                                              ; preds = %508
  %556 = load %struct.connection*, %struct.connection** %3, align 8
  %557 = getelementptr inbounds %struct.connection, %struct.connection* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 8
  store i32 %558, i32* %7, align 4
  %559 = load i32, i32* %7, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %577

561:                                              ; preds = %555
  %562 = load %struct.connection*, %struct.connection** %3, align 8
  %563 = getelementptr inbounds %struct.connection, %struct.connection* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %577

566:                                              ; preds = %561
  %567 = load %struct.connection*, %struct.connection** %3, align 8
  %568 = getelementptr inbounds %struct.connection, %struct.connection* %567, i32 0, i32 6
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 0
  %571 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %570, align 8
  %572 = load %struct.connection*, %struct.connection** %3, align 8
  %573 = call i64 %571(%struct.connection* %572)
  %574 = icmp sge i64 %573, 0
  %575 = zext i1 %574 to i32
  %576 = call i32 @assert(i32 %575)
  br label %577

577:                                              ; preds = %566, %561, %555
  %578 = load %struct.connection*, %struct.connection** %3, align 8
  %579 = getelementptr inbounds %struct.connection, %struct.connection* %578, i32 0, i32 9
  %580 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  store i32 %581, i32* %6, align 4
  %582 = load i32, i32* %7, align 4
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %614

584:                                              ; preds = %577
  %585 = load i32, i32* %6, align 4
  %586 = load i32, i32* %7, align 4
  %587 = sub nsw i32 0, %586
  %588 = icmp sgt i32 %585, %587
  br i1 %588, label %589, label %592

589:                                              ; preds = %584
  %590 = load i32, i32* %7, align 4
  %591 = sub nsw i32 0, %590
  store i32 %591, i32* %6, align 4
  br label %592

592:                                              ; preds = %589, %584
  %593 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %594 = load i32, i32* %6, align 4
  %595 = call i32 @rwm_fetch_data(%struct.raw_message* %593, i32 0, i32 %594)
  %596 = load i32, i32* %6, align 4
  %597 = load i32, i32* %7, align 4
  %598 = add nsw i32 %597, %596
  store i32 %598, i32* %7, align 4
  %599 = load %struct.connection*, %struct.connection** %3, align 8
  %600 = getelementptr inbounds %struct.connection, %struct.connection* %599, i32 0, i32 3
  store i32 %598, i32* %600, align 8
  %601 = load i32, i32* @verbosity, align 4
  %602 = icmp sgt i32 %601, 2
  br i1 %602, label %603, label %609

603:                                              ; preds = %592
  %604 = load i32, i32* @stderr, align 4
  %605 = load i32, i32* %6, align 4
  %606 = load i32, i32* %7, align 4
  %607 = sub nsw i32 0, %606
  %608 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %604, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %605, i32 %607)
  br label %609

609:                                              ; preds = %603, %592
  %610 = load i32, i32* %7, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  br label %32

613:                                              ; preds = %609
  br label %614

614:                                              ; preds = %613, %577
  %615 = load i32, i32* %7, align 4
  %616 = icmp sgt i32 %615, 0
  br i1 %616, label %617, label %641

617:                                              ; preds = %614
  %618 = load i32, i32* %6, align 4
  %619 = load i32, i32* %7, align 4
  %620 = icmp sge i32 %618, %619
  br i1 %620, label %621, label %624

621:                                              ; preds = %617
  store i32 0, i32* %7, align 4
  %622 = load %struct.connection*, %struct.connection** %3, align 8
  %623 = getelementptr inbounds %struct.connection, %struct.connection* %622, i32 0, i32 3
  store i32 0, i32* %623, align 8
  br label %624

624:                                              ; preds = %621, %617
  %625 = load i32, i32* %5, align 4
  %626 = load i32, i32* %6, align 4
  %627 = load i32, i32* %7, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %624
  %630 = load i32, i32* %7, align 4
  %631 = load i32, i32* %6, align 4
  %632 = sub nsw i32 %630, %631
  br label %634

633:                                              ; preds = %624
  br label %634

634:                                              ; preds = %633, %629
  %635 = phi i32 [ %632, %629 ], [ 0, %633 ]
  %636 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %625, i32 %626, i32 %635)
  %637 = load i32, i32* %7, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %634
  br label %32

640:                                              ; preds = %634
  br label %641

641:                                              ; preds = %640, %614
  br label %642

642:                                              ; preds = %641, %273
  br label %644

643:                                              ; preds = %104
  store i32 2147483647, i32* %5, align 4
  br label %644

644:                                              ; preds = %643, %642
  %645 = load %struct.connection*, %struct.connection** %3, align 8
  %646 = getelementptr inbounds %struct.connection, %struct.connection* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %660

649:                                              ; preds = %644
  %650 = load %struct.connection*, %struct.connection** %3, align 8
  %651 = getelementptr inbounds %struct.connection, %struct.connection* %650, i32 0, i32 6
  %652 = load %struct.TYPE_10__*, %struct.TYPE_10__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 0
  %654 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %653, align 8
  %655 = load %struct.connection*, %struct.connection** %3, align 8
  %656 = call i64 %654(%struct.connection* %655)
  %657 = icmp sge i64 %656, 0
  %658 = zext i1 %657 to i32
  %659 = call i32 @assert(i32 %658)
  br label %660

660:                                              ; preds = %649, %644
  br label %661

661:                                              ; preds = %801, %660
  %662 = load %struct.connection*, %struct.connection** %3, align 8
  %663 = getelementptr inbounds %struct.connection, %struct.connection* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 8
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %692, label %666

666:                                              ; preds = %661
  %667 = load %struct.connection*, %struct.connection** %3, align 8
  %668 = getelementptr inbounds %struct.connection, %struct.connection* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 4
  %670 = load i32, i32* @conn_expect_query, align 4
  %671 = icmp eq i32 %669, %670
  br i1 %671, label %690, label %672

672:                                              ; preds = %666
  %673 = load %struct.connection*, %struct.connection** %3, align 8
  %674 = getelementptr inbounds %struct.connection, %struct.connection* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @conn_reading_query, align 4
  %677 = icmp eq i32 %675, %676
  br i1 %677, label %690, label %678

678:                                              ; preds = %672
  %679 = load %struct.connection*, %struct.connection** %3, align 8
  %680 = getelementptr inbounds %struct.connection, %struct.connection* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* @conn_wait_answer, align 4
  %683 = icmp eq i32 %681, %682
  br i1 %683, label %690, label %684

684:                                              ; preds = %678
  %685 = load %struct.connection*, %struct.connection** %3, align 8
  %686 = getelementptr inbounds %struct.connection, %struct.connection* %685, i32 0, i32 2
  %687 = load i32, i32* %686, align 4
  %688 = load i32, i32* @conn_reading_answer, align 4
  %689 = icmp eq i32 %687, %688
  br label %690

690:                                              ; preds = %684, %678, %672, %666
  %691 = phi i1 [ true, %678 ], [ true, %672 ], [ true, %666 ], [ %689, %684 ]
  br label %692

692:                                              ; preds = %690, %661
  %693 = phi i1 [ false, %661 ], [ %691, %690 ]
  br i1 %693, label %694, label %802

694:                                              ; preds = %692
  %695 = load %struct.connection*, %struct.connection** %3, align 8
  %696 = getelementptr inbounds %struct.connection, %struct.connection* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 4
  %698 = sub nsw i32 %697, 1
  %699 = or i32 %698, 1
  store i32 %699, i32* %17, align 4
  %700 = load i32, i32* @C_REPARSE, align 4
  %701 = xor i32 %700, -1
  %702 = load %struct.connection*, %struct.connection** %3, align 8
  %703 = getelementptr inbounds %struct.connection, %struct.connection* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 8
  %705 = and i32 %704, %701
  store i32 %705, i32* %703, align 8
  %706 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %707 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 8
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %727, label %710

710:                                              ; preds = %694
  %711 = load %struct.connection*, %struct.connection** %3, align 8
  %712 = getelementptr inbounds %struct.connection, %struct.connection* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = icmp ne i64 %713, 0
  br i1 %714, label %715, label %726

715:                                              ; preds = %710
  %716 = load %struct.connection*, %struct.connection** %3, align 8
  %717 = getelementptr inbounds %struct.connection, %struct.connection* %716, i32 0, i32 6
  %718 = load %struct.TYPE_10__*, %struct.TYPE_10__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %718, i32 0, i32 1
  %720 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %719, align 8
  %721 = load %struct.connection*, %struct.connection** %3, align 8
  %722 = call i64 %720(%struct.connection* %721)
  %723 = icmp sge i64 %722, 0
  %724 = zext i1 %723 to i32
  %725 = call i32 @assert(i32 %724)
  br label %726

726:                                              ; preds = %715, %710
  store i32 0, i32* %2, align 4
  br label %825

727:                                              ; preds = %694
  %728 = load %struct.connection*, %struct.connection** %3, align 8
  %729 = getelementptr inbounds %struct.connection, %struct.connection* %728, i32 0, i32 2
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* %17, align 4
  %732 = icmp eq i32 %730, %731
  br i1 %732, label %733, label %740

733:                                              ; preds = %727
  %734 = load %struct.connection*, %struct.connection** %3, align 8
  %735 = getelementptr inbounds %struct.connection, %struct.connection* %734, i32 0, i32 8
  store i64 0, i64* %735, align 8
  %736 = load %struct.connection*, %struct.connection** %3, align 8
  %737 = getelementptr inbounds %struct.connection, %struct.connection* %736, i32 0, i32 2
  %738 = load i32, i32* %737, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %737, align 4
  br label %740

740:                                              ; preds = %733, %727
  %741 = load %struct.connection*, %struct.connection** %3, align 8
  %742 = getelementptr inbounds %struct.connection, %struct.connection* %741, i32 0, i32 6
  %743 = load %struct.TYPE_10__*, %struct.TYPE_10__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %743, i32 0, i32 2
  %745 = bitcast {}** %744 to i32 (%struct.connection*)**
  %746 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %745, align 8
  %747 = load %struct.connection*, %struct.connection** %3, align 8
  %748 = call i32 %746(%struct.connection* %747)
  store i32 %748, i32* %4, align 4
  %749 = load i32, i32* %4, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %770, label %751

751:                                              ; preds = %740
  %752 = load %struct.connection*, %struct.connection** %3, align 8
  %753 = getelementptr inbounds %struct.connection, %struct.connection* %752, i32 0, i32 2
  %754 = load i32, i32* %753, align 4
  %755 = load i32, i32* %17, align 4
  %756 = add nsw i32 %755, 1
  %757 = icmp eq i32 %754, %756
  br i1 %757, label %758, label %763

758:                                              ; preds = %751
  %759 = load %struct.connection*, %struct.connection** %3, align 8
  %760 = getelementptr inbounds %struct.connection, %struct.connection* %759, i32 0, i32 2
  %761 = load i32, i32* %760, align 4
  %762 = add nsw i32 %761, -1
  store i32 %762, i32* %760, align 4
  br label %763

763:                                              ; preds = %758, %751
  %764 = load %struct.connection*, %struct.connection** %3, align 8
  %765 = getelementptr inbounds %struct.connection, %struct.connection* %764, i32 0, i32 7
  %766 = load i64, i64* %765, align 8
  %767 = icmp ne i64 %766, 0
  br i1 %767, label %768, label %769

768:                                              ; preds = %763
  store i32 -1, i32* %2, align 4
  br label %825

769:                                              ; preds = %763
  br label %801

770:                                              ; preds = %740
  %771 = load i32, i32* %4, align 4
  %772 = load i32, i32* @NEED_MORE_BYTES, align 4
  %773 = icmp ne i32 %771, %772
  br i1 %773, label %774, label %800

774:                                              ; preds = %770
  %775 = load i32, i32* %4, align 4
  %776 = icmp slt i32 %775, 0
  br i1 %776, label %777, label %790

777:                                              ; preds = %774
  %778 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %779 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %778, i32 0, i32 1
  %780 = load i32, i32* %779, align 8
  %781 = icmp ne i32 %780, 0
  %782 = xor i1 %781, true
  %783 = zext i1 %782 to i32
  %784 = call i32 @assert(i32 %783)
  %785 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %786 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 8
  %788 = load i32, i32* %4, align 4
  %789 = sub nsw i32 %788, %787
  store i32 %789, i32* %4, align 4
  br label %796

790:                                              ; preds = %774
  %791 = load %struct.raw_message*, %struct.raw_message** %9, align 8
  %792 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %791, i32 0, i32 1
  %793 = load i32, i32* %792, align 8
  %794 = load i32, i32* %4, align 4
  %795 = add nsw i32 %794, %793
  store i32 %795, i32* %4, align 4
  br label %796

796:                                              ; preds = %790, %777
  %797 = load i32, i32* %4, align 4
  %798 = load %struct.connection*, %struct.connection** %3, align 8
  %799 = getelementptr inbounds %struct.connection, %struct.connection* %798, i32 0, i32 3
  store i32 %797, i32* %799, align 8
  br label %802

800:                                              ; preds = %770
  br label %801

801:                                              ; preds = %800, %769
  br label %661

802:                                              ; preds = %796, %692
  %803 = load i32, i32* %5, align 4
  %804 = icmp sle i32 %803, 0
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  br label %807

806:                                              ; preds = %802
  br label %32

807:                                              ; preds = %805, %113, %103
  %808 = load %struct.connection*, %struct.connection** %3, align 8
  %809 = getelementptr inbounds %struct.connection, %struct.connection* %808, i32 0, i32 0
  %810 = load i64, i64* %809, align 8
  %811 = icmp ne i64 %810, 0
  br i1 %811, label %812, label %823

812:                                              ; preds = %807
  %813 = load %struct.connection*, %struct.connection** %3, align 8
  %814 = getelementptr inbounds %struct.connection, %struct.connection* %813, i32 0, i32 6
  %815 = load %struct.TYPE_10__*, %struct.TYPE_10__** %814, align 8
  %816 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %815, i32 0, i32 1
  %817 = load i64 (%struct.connection*)*, i64 (%struct.connection*)** %816, align 8
  %818 = load %struct.connection*, %struct.connection** %3, align 8
  %819 = call i64 %817(%struct.connection* %818)
  %820 = icmp sge i64 %819, 0
  %821 = zext i1 %820 to i32
  %822 = call i32 @assert(i32 %821)
  br label %823

823:                                              ; preds = %812, %807
  %824 = load i32, i32* %4, align 4
  store i32 %824, i32* %2, align 4
  br label %825

825:                                              ; preds = %823, %768, %726
  %826 = load i32, i32* %2, align 4
  ret i32 %826
}

declare dso_local i32 @rwm_clear(%struct.raw_message*) #1

declare dso_local i32 @prealloc_tcp_buffers(...) #1

declare dso_local i32 @fork_message_chain(%struct.raw_message*) #1

declare dso_local i32 @readv(i32, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.msg_part* @new_msg_part(i32, %struct.msg_buffer*) #1

declare dso_local %struct.msg_buffer* @alloc_msg_buffer(%struct.msg_buffer*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rwm_fetch_data(%struct.raw_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
