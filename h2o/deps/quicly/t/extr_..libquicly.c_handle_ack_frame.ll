; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_ack_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_ack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_23__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.st_quicly_handle_payload_state_t = type { i64, i32, i32, i32 }
%struct.TYPE_32__ = type { i64, i64, i64*, i64*, i32, i32 }
%struct.anon = type { i64, i32 }
%struct.TYPE_30__ = type { i64, i64, i32, i64, i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@QUICLY_FRAME_TYPE_ACK_ECN = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@QUICTRACE_RECV_ACK = common dso_local global i32 0, align 4
@PACKET_ACKED = common dso_local global i32 0, align 4
@QUICLY_SENTMAP_EVENT_ACKED = common dso_local global i32 0, align 4
@QUICTRACE_RECV_ACK_DELAY = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@QUICTRACE_CC_ACK = common dso_local global i32 0, align 4
@CC_ACK_RECEIVED = common dso_local global i32 0, align 4
@do_detect_loss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.st_quicly_handle_payload_state_t*)* @handle_ack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ack_frame(%struct.TYPE_31__* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_32__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %17 = load i32, i32* @UINT64_MAX, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %20 = load i32, i32* @INT64_MAX, align 4
  store i32 %20, i32* %19, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %22 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %21, i32 0, i32 3
  %23 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %24 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QUICLY_FRAME_TYPE_ACK_ECN, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @quicly_decode_ack_frame(i32* %22, i32 %25, %struct.TYPE_32__* %6, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %253

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %40 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %44
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION, align 4
  store i32 %43, i32* %3, align 4
  br label %253

44:                                               ; preds = %36
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %53 = call i32 @init_acks_iter(%struct.TYPE_31__* %52, i32* %7)
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %51, %159
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %154

64:                                               ; preds = %56
  %65 = load i32, i32* @QUICTRACE_RECV_ACK, align 4
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %67 = call i32 (...) @probe_now()
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %69, %70
  %72 = sub nsw i64 %71, 1
  %73 = call i32 (i32, %struct.TYPE_31__*, i32, i64, ...) @QUICLY_PROBE(i32 %65, %struct.TYPE_31__* %66, i32 %67, i64 %68, i64 %72)
  br label %74

74:                                               ; preds = %80, %64
  %75 = call %struct.TYPE_30__* @quicly_sentmap_get(i32* %7)
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 @quicly_sentmap_skip(i32* %7)
  br label %74

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %149, %82
  %84 = call %struct.TYPE_30__* @quicly_sentmap_get(i32* %7)
  store %struct.TYPE_30__* %84, %struct.TYPE_30__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %146

89:                                               ; preds = %83
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %98 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %89
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @PACKET_ACKED, align 4
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %119 = call i32 (...) @probe_now()
  %120 = load i64, i64* %12, align 8
  %121 = call i32 (i32, %struct.TYPE_31__*, i32, i64, ...) @QUICLY_PROBE(i32 %117, %struct.TYPE_31__* %118, i32 %119, i64 %120, i32 1)
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %105
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %126, %105
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 1
  %136 = load i32, i32* @QUICLY_SENTMAP_EVENT_ACKED, align 4
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %138 = call i32 @quicly_sentmap_update(%struct.TYPE_21__* %135, i32* %7, i32 %136, %struct.TYPE_31__* %137)
  store i32 %138, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %3, align 4
  br label %253

142:                                              ; preds = %132
  br label %145

143:                                              ; preds = %89
  %144 = call i32 @quicly_sentmap_skip(i32* %7)
  br label %145

145:                                              ; preds = %143, %142
  br label %146

146:                                              ; preds = %145, %83
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %12, align 8
  br label %149

149:                                              ; preds = %146
  %150 = load i64, i64* %14, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %14, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %83, label %153

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153, %56
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %13, align 8
  %157 = icmp eq i64 %155, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %167

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 3
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %12, align 8
  br label %56

167:                                              ; preds = %158
  %168 = load i32, i32* @QUICTRACE_RECV_ACK_DELAY, align 4
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %170 = call i32 (...) @probe_now()
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = call i32 (i32, %struct.TYPE_31__*, i32, i64, ...) @QUICLY_PROBE(i32 %168, %struct.TYPE_31__* %169, i32 %170, i64 %173)
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @now, align 4
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @quicly_loss_on_ack_received(%struct.TYPE_22__* %177, i64 %179, i32 %180, i32 %182, i32 %184, i32 %185)
  %187 = load i64, i64* %9, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %167
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 2
  %193 = load i64, i64* %9, align 8
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = call i32 @quicly_cc_on_acked(%struct.TYPE_23__* %192, i32 %194, i32 %196, i32 %204)
  %206 = load i32, i32* @QUICTRACE_CC_ACK, align 4
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %208 = call i32 (...) @probe_now()
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = ptrtoint i32* %212 to i64
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i32, %struct.TYPE_31__*, i32, i64, ...) @QUICLY_PROBE(i32 %206, %struct.TYPE_31__* %207, i32 %208, i64 %213, i32 %218, i64 %223)
  br label %225

225:                                              ; preds = %189, %167
  %226 = load i32, i32* @CC_ACK_RECEIVED, align 4
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %228 = call i32 (...) @probe_now()
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %9, align 8
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (i32, %struct.TYPE_31__*, i32, i64, ...) @QUICLY_PROBE(i32 %226, %struct.TYPE_31__* %227, i32 %228, i64 %231, i64 %232, i32 %237, i64 %242)
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @do_detect_loss, align 4
  %250 = call i32 @quicly_loss_detect_loss(%struct.TYPE_22__* %246, i32 %248, i32 %249)
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %252 = call i32 @update_loss_alarm(%struct.TYPE_31__* %251)
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %225, %140, %42, %34
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @quicly_decode_ack_frame(i32*, i32, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @init_acks_iter(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_31__*, i32, i64, ...) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local %struct.TYPE_30__* @quicly_sentmap_get(i32*) #1

declare dso_local i32 @quicly_sentmap_skip(i32*) #1

declare dso_local i32 @quicly_sentmap_update(%struct.TYPE_21__*, i32*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @quicly_loss_on_ack_received(%struct.TYPE_22__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @quicly_cc_on_acked(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @quicly_loss_detect_loss(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @update_loss_alarm(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
