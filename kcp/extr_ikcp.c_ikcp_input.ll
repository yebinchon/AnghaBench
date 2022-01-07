; ModuleID = '/home/carl/AnghaBench/kcp/extr_ikcp.c_ikcp_input.c'
source_filename = "/home/carl/AnghaBench/kcp/extr_ikcp.c_ikcp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i64, i64, i64, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i64, i8*, i64, i64, i64 }

@IKCP_LOG_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[RI] %d bytes\00", align 1
@IKCP_OVERHEAD = common dso_local global i64 0, align 8
@IKCP_CMD_PUSH = common dso_local global i64 0, align 8
@IKCP_CMD_ACK = common dso_local global i64 0, align 8
@IKCP_CMD_WASK = common dso_local global i64 0, align 8
@IKCP_CMD_WINS = common dso_local global i64 0, align 8
@IKCP_LOG_IN_ACK = common dso_local global i32 0, align 4
@IKCP_LOG_IN_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"input ack: sn=%lu rtt=%ld rto=%ld\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"input psh: sn=%lu ts=%lu\00", align 1
@IKCP_ASK_TELL = common dso_local global i32 0, align 4
@IKCP_LOG_IN_PROBE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"input probe\00", align 1
@IKCP_LOG_IN_WINS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"input wins: %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikcp_input(%struct.TYPE_16__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = load i32, i32* @IKCP_LOG_INPUT, align 4
  %27 = call i64 @ikcp_canlog(%struct.TYPE_16__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = load i32, i32* @IKCP_LOG_INPUT, align 4
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @ikcp_log(%struct.TYPE_16__* %30, i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* @IKCP_OVERHEAD, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %35
  store i32 -1, i32* %4, align 4
  br label %409

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %291
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @IKCP_OVERHEAD, align 8
  %49 = trunc i64 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %298

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @ikcp_decode32u(i8* %54, i64* %16)
  store i8* %55, i8** %6, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %409

62:                                               ; preds = %53
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @ikcp_decode8u(i8* %63, i64* %18)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @ikcp_decode8u(i8* %65, i64* %19)
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @ikcp_decode16u(i8* %67, i8** %17)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @ikcp_decode32u(i8* %69, i64* %12)
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @ikcp_decode32u(i8* %71, i64* %13)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @ikcp_decode32u(i8* %73, i64* %15)
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i8* @ikcp_decode32u(i8* %75, i64* %14)
  store i8* %76, i8** %6, align 8
  %77 = load i64, i64* @IKCP_OVERHEAD, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %62
  %84 = load i64, i64* %14, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %62
  store i32 -2, i32* %4, align 4
  br label %409

88:                                               ; preds = %83
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* @IKCP_CMD_PUSH, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* @IKCP_CMD_ACK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* @IKCP_CMD_WASK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* @IKCP_CMD_WINS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -3, i32* %4, align 4
  br label %409

105:                                              ; preds = %100, %96, %92, %88
  %106 = load i8*, i8** %17, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @ikcp_parse_una(%struct.TYPE_16__* %110, i64 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = call i32 @ikcp_shrink_buf(%struct.TYPE_16__* %113)
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* @IKCP_CMD_ACK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %172

118:                                              ; preds = %105
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i64 @_itimediff(i64 %121, i64 %122)
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i64 @_itimediff(i64 %129, i64 %130)
  %132 = call i32 @ikcp_update_ack(%struct.TYPE_16__* %126, i64 %131)
  br label %133

133:                                              ; preds = %125, %118
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @ikcp_parse_ack(%struct.TYPE_16__* %134, i64 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = call i32 @ikcp_shrink_buf(%struct.TYPE_16__* %137)
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  store i32 1, i32* %11, align 4
  %142 = load i64, i64* %13, align 8
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* %10, align 8
  br label %153

144:                                              ; preds = %133
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @_itimediff(i64 %145, i64 %146)
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %13, align 8
  store i64 %150, i64* %9, align 8
  %151 = load i64, i64* %12, align 8
  store i64 %151, i64* %10, align 8
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %141
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = load i32, i32* @IKCP_LOG_IN_ACK, align 4
  %156 = call i64 @ikcp_canlog(%struct.TYPE_16__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %160 = load i32, i32* @IKCP_LOG_IN_DATA, align 4
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = call i64 @_itimediff(i64 %164, i64 %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @ikcp_log(%struct.TYPE_16__* %159, i32 %160, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %161, i64 %166, i64 %169)
  br label %171

171:                                              ; preds = %158, %153
  br label %291

172:                                              ; preds = %105
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @IKCP_CMD_PUSH, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %252

176:                                              ; preds = %172
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = load i32, i32* @IKCP_LOG_IN_DATA, align 4
  %179 = call i64 @ikcp_canlog(%struct.TYPE_16__* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = load i32, i32* @IKCP_LOG_IN_DATA, align 4
  %184 = load i64, i64* %13, align 8
  %185 = load i64, i64* %12, align 8
  %186 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @ikcp_log(%struct.TYPE_16__* %182, i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %184, i64 %185)
  br label %187

187:                                              ; preds = %181, %176
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = call i64 @_itimediff(i64 %188, i64 %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %251

198:                                              ; preds = %187
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @ikcp_ack_push(%struct.TYPE_16__* %199, i64 %200, i64 %201)
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @_itimediff(i64 %203, i64 %206)
  %208 = icmp sge i64 %207, 0
  br i1 %208, label %209, label %250

209:                                              ; preds = %198
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %211 = load i64, i64* %14, align 8
  %212 = call %struct.TYPE_17__* @ikcp_segment_new(%struct.TYPE_16__* %210, i64 %211)
  store %struct.TYPE_17__* %212, %struct.TYPE_17__** %20, align 8
  %213 = load i64, i64* %16, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 8
  store i64 %213, i64* %215, align 8
  %216 = load i64, i64* %18, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 7
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 6
  store i64 %219, i64* %221, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  store i64 %225, i64* %227, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* %15, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %14, align 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  %237 = load i64, i64* %14, align 8
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %209
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i8*, i8** %6, align 8
  %244 = load i64, i64* %14, align 8
  %245 = call i32 @memcpy(i32 %242, i8* %243, i64 %244)
  br label %246

246:                                              ; preds = %239, %209
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %249 = call i32 @ikcp_parse_data(%struct.TYPE_16__* %247, %struct.TYPE_17__* %248)
  br label %250

250:                                              ; preds = %246, %198
  br label %251

251:                                              ; preds = %250, %187
  br label %290

252:                                              ; preds = %172
  %253 = load i64, i64* %18, align 8
  %254 = load i64, i64* @IKCP_CMD_WASK, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %252
  %257 = load i32, i32* @IKCP_ASK_TELL, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %263 = load i32, i32* @IKCP_LOG_IN_PROBE, align 4
  %264 = call i64 @ikcp_canlog(%struct.TYPE_16__* %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %256
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %268 = load i32, i32* @IKCP_LOG_IN_PROBE, align 4
  %269 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @ikcp_log(%struct.TYPE_16__* %267, i32 %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %270

270:                                              ; preds = %266, %256
  br label %289

271:                                              ; preds = %252
  %272 = load i64, i64* %18, align 8
  %273 = load i64, i64* @IKCP_CMD_WINS, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %271
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %277 = load i32, i32* @IKCP_LOG_IN_WINS, align 4
  %278 = call i64 @ikcp_canlog(%struct.TYPE_16__* %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %282 = load i32, i32* @IKCP_LOG_IN_WINS, align 4
  %283 = load i8*, i8** %17, align 8
  %284 = ptrtoint i8* %283 to i64
  %285 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @ikcp_log(%struct.TYPE_16__* %281, i32 %282, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %284)
  br label %286

286:                                              ; preds = %280, %275
  br label %288

287:                                              ; preds = %271
  store i32 -3, i32* %4, align 4
  br label %409

288:                                              ; preds = %286
  br label %289

289:                                              ; preds = %288, %270
  br label %290

290:                                              ; preds = %289, %251
  br label %291

291:                                              ; preds = %290, %171
  %292 = load i64, i64* %14, align 8
  %293 = load i8*, i8** %6, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 %292
  store i8* %294, i8** %6, align 8
  %295 = load i64, i64* %14, align 8
  %296 = load i64, i64* %7, align 8
  %297 = sub nsw i64 %296, %295
  store i64 %297, i64* %7, align 8
  br label %46

298:                                              ; preds = %52
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %303 = load i64, i64* %9, align 8
  %304 = load i64, i64* %10, align 8
  %305 = call i32 @ikcp_parse_fastack(%struct.TYPE_16__* %302, i64 %303, i64 %304)
  br label %306

306:                                              ; preds = %301, %298
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %8, align 8
  %311 = call i64 @_itimediff(i64 %309, i64 %310)
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %408

313:                                              ; preds = %306
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %407

321:                                              ; preds = %313
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 7
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %21, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %342

332:                                              ; preds = %321
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  %337 = load i64, i64* %21, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, %337
  store i64 %341, i64* %339, align 8
  br label %384

342:                                              ; preds = %321
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 9
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* %21, align 8
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %342
  %349 = load i64, i64* %21, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 9
  store i64 %349, i64* %351, align 8
  br label %352

352:                                              ; preds = %348, %342
  %353 = load i64, i64* %21, align 8
  %354 = load i64, i64* %21, align 8
  %355 = mul nsw i64 %353, %354
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 9
  %358 = load i64, i64* %357, align 8
  %359 = sdiv i64 %355, %358
  %360 = load i64, i64* %21, align 8
  %361 = sdiv i64 %360, 16
  %362 = add nsw i64 %359, %361
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 9
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, %362
  store i64 %366, i64* %364, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %21, align 8
  %373 = mul nsw i64 %371, %372
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 9
  %376 = load i64, i64* %375, align 8
  %377 = icmp sle i64 %373, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %352
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 8
  br label %383

383:                                              ; preds = %378, %352
  br label %384

384:                                              ; preds = %383, %332
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = icmp sgt i32 %387, %390
  br i1 %391, label %392, label %406

392:                                              ; preds = %384
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 6
  store i32 %395, i32* %397, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = load i64, i64* %21, align 8
  %403 = mul nsw i64 %401, %402
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %404, i32 0, i32 9
  store i64 %403, i64* %405, align 8
  br label %406

406:                                              ; preds = %392, %384
  br label %407

407:                                              ; preds = %406, %313
  br label %408

408:                                              ; preds = %407, %306
  store i32 0, i32* %4, align 4
  br label %409

409:                                              ; preds = %408, %287, %104, %87, %61, %44
  %410 = load i32, i32* %4, align 4
  ret i32 %410
}

declare dso_local i64 @ikcp_canlog(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ikcp_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i8* @ikcp_decode32u(i8*, i64*) #1

declare dso_local i8* @ikcp_decode8u(i8*, i64*) #1

declare dso_local i8* @ikcp_decode16u(i8*, i8**) #1

declare dso_local i32 @ikcp_parse_una(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ikcp_shrink_buf(%struct.TYPE_16__*) #1

declare dso_local i64 @_itimediff(i64, i64) #1

declare dso_local i32 @ikcp_update_ack(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ikcp_parse_ack(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ikcp_ack_push(%struct.TYPE_16__*, i64, i64) #1

declare dso_local %struct.TYPE_17__* @ikcp_segment_new(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @ikcp_parse_data(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ikcp_parse_fastack(%struct.TYPE_16__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
