; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_dblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_dblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_9__*, %struct.drbd_device* }
%struct.TYPE_9__ = type { i32, i64, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.drbd_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.drbd_request = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.p_data = type { i64, i8*, i8*, i32 }
%struct.p_wsame = type { i8* }
%struct.p_trim = type { i8* }
%struct.TYPE_8__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@C_SYNC_SOURCE = common dso_local global i64 0, align 8
@C_PAUSED_SYNC_T = common dso_local global i64 0, align 8
@DP_MAY_SET_IN_SYNC = common dso_local global i32 0, align 4
@RQ_EXP_RECEIVE_ACK = common dso_local global i32 0, align 4
@DP_SEND_RECEIVE_ACK = common dso_local global i32 0, align 4
@RQ_EXP_WRITE_ACK = common dso_local global i32 0, align 4
@DP_SEND_WRITE_ACK = common dso_local global i32 0, align 4
@DP_DISCARD = common dso_local global i32 0, align 4
@DP_ZEROES = common dso_local global i32 0, align 4
@P_ZEROES = common dso_local global i32 0, align 4
@P_TRIM = common dso_local global i32 0, align 4
@DP_WSAME = common dso_local global i32 0, align 4
@P_WSAME = common dso_local global i32 0, align 4
@P_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Digest mismatch, buffer modified by upper layers during write: %llus +%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_dblock(%struct.drbd_peer_device* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_peer_device*, align 8
  %5 = alloca %struct.drbd_request*, align 8
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca %struct.drbd_socket*, align 8
  %8 = alloca %struct.p_data*, align 8
  %9 = alloca %struct.p_wsame*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.p_trim*, align 8
  %16 = alloca %struct.TYPE_8__, align 4
  %17 = alloca [64 x i8], align 16
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %4, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %5, align 8
  %18 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %19 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %18, i32 0, i32 1
  %20 = load %struct.drbd_device*, %struct.drbd_device** %19, align 8
  store %struct.drbd_device* %20, %struct.drbd_device** %6, align 8
  store %struct.p_wsame* null, %struct.p_wsame** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %22 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store %struct.drbd_socket* %24, %struct.drbd_socket** %7, align 8
  %25 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %26 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %27 = call %struct.p_data* @drbd_prepare_command(%struct.drbd_peer_device* %25, %struct.drbd_socket* %26)
  store %struct.p_data* %27, %struct.p_data** %8, align 8
  %28 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %29 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %36 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @crypto_shash_digestsize(i64 %39)
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i32 [ %40, %34 ], [ 0, %41 ]
  store i32 %43, i32* %12, align 4
  %44 = load %struct.p_data*, %struct.p_data** %8, align 8
  %45 = icmp ne %struct.p_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %313

49:                                               ; preds = %42
  %50 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %51 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @cpu_to_be64(i64 %53)
  %55 = load %struct.p_data*, %struct.p_data** %8, align 8
  %56 = getelementptr inbounds %struct.p_data, %struct.p_data* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %58 = ptrtoint %struct.drbd_request* %57 to i64
  %59 = load %struct.p_data*, %struct.p_data** %8, align 8
  %60 = getelementptr inbounds %struct.p_data, %struct.p_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %62 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %61, i32 0, i32 2
  %63 = call i32 @atomic_inc_return(i32* %62)
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.p_data*, %struct.p_data** %8, align 8
  %66 = getelementptr inbounds %struct.p_data, %struct.p_data* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %68 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %71 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bio_flags_to_wire(%struct.TYPE_9__* %69, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %75 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @C_SYNC_SOURCE, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %49
  %81 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %82 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @C_PAUSED_SYNC_T, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @DP_MAY_SET_IN_SYNC, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %80, %49
  %92 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %93 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 100
  br i1 %97, label %98, label %126

98:                                               ; preds = %91
  %99 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %100 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RQ_EXP_RECEIVE_ACK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @DP_SEND_RECEIVE_ACK, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %111 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RQ_EXP_WRITE_ACK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @DP_MAY_SET_IN_SYNC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116, %109
  %122 = load i32, i32* @DP_SEND_WRITE_ACK, align 4
  %123 = load i32, i32* %11, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %121, %116
  br label %126

126:                                              ; preds = %125, %91
  %127 = load i32, i32* %11, align 4
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.p_data*, %struct.p_data** %8, align 8
  %130 = getelementptr inbounds %struct.p_data, %struct.p_data* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @DP_DISCARD, align 4
  %133 = load i32, i32* @DP_ZEROES, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %126
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @DP_ZEROES, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @P_ZEROES, align 4
  br label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @P_TRIM, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %14, align 4
  %148 = load %struct.p_data*, %struct.p_data** %8, align 8
  %149 = bitcast %struct.p_data* %148 to %struct.p_trim*
  store %struct.p_trim* %149, %struct.p_trim** %15, align 8
  %150 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %151 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.p_trim*, %struct.p_trim** %15, align 8
  %156 = getelementptr inbounds %struct.p_trim, %struct.p_trim* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %158 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %161 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @__send_command(%struct.TYPE_9__* %159, i32 %162, %struct.drbd_socket* %163, i32 %164, i32 8, i32* null, i32 0)
  store i32 %165, i32* %13, align 4
  br label %308

166:                                              ; preds = %126
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @DP_WSAME, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load %struct.p_data*, %struct.p_data** %8, align 8
  %173 = bitcast %struct.p_data* %172 to %struct.p_wsame*
  store %struct.p_wsame* %173, %struct.p_wsame** %9, align 8
  %174 = load %struct.p_wsame*, %struct.p_wsame** %9, align 8
  %175 = getelementptr inbounds %struct.p_wsame, %struct.p_wsame* %174, i64 1
  %176 = bitcast %struct.p_wsame* %175 to i8*
  store i8* %176, i8** %10, align 8
  %177 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %178 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i8* @cpu_to_be32(i32 %180)
  %182 = load %struct.p_wsame*, %struct.p_wsame** %9, align 8
  %183 = getelementptr inbounds %struct.p_wsame, %struct.p_wsame* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  br label %188

184:                                              ; preds = %166
  %185 = load %struct.p_data*, %struct.p_data** %8, align 8
  %186 = getelementptr inbounds %struct.p_data, %struct.p_data* %185, i64 1
  %187 = bitcast %struct.p_data* %186 to i8*
  store i8* %187, i8** %10, align 8
  br label %188

188:                                              ; preds = %184, %171
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %193 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %198 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @drbd_csum_bio(i64 %196, i32 %199, i8* %200)
  br label %202

202:                                              ; preds = %191, %188
  %203 = load %struct.p_wsame*, %struct.p_wsame** %9, align 8
  %204 = icmp ne %struct.p_wsame* %203, null
  br i1 %204, label %205, label %226

205:                                              ; preds = %202
  %206 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %207 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %210 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %213 = load i32, i32* @P_WSAME, align 4
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = add i64 8, %215
  %217 = trunc i64 %216 to i32
  %218 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %219 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @bio_iovec(i32 %220)
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @__send_command(%struct.TYPE_9__* %208, i32 %211, %struct.drbd_socket* %212, i32 %213, i32 %217, i32* null, i32 %224)
  store i32 %225, i32* %13, align 4
  br label %244

226:                                              ; preds = %202
  %227 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %228 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %227, i32 0, i32 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %231 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %234 = load i32, i32* @P_DATA, align 4
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = add i64 32, %236
  %238 = trunc i64 %237 to i32
  %239 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %240 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @__send_command(%struct.TYPE_9__* %229, i32 %232, %struct.drbd_socket* %233, i32 %234, i32 %238, i32* null, i32 %242)
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %226, %205
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %307, label %247

247:                                              ; preds = %244
  %248 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %249 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @RQ_EXP_RECEIVE_ACK, align 4
  %252 = load i32, i32* @RQ_EXP_WRITE_ACK, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %247
  %257 = load i32, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256, %247
  %260 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %261 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %262 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @_drbd_send_bio(%struct.drbd_peer_device* %260, i32 %263)
  store i32 %264, i32* %13, align 4
  br label %271

265:                                              ; preds = %256
  %266 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %267 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %268 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @_drbd_send_zc_bio(%struct.drbd_peer_device* %266, i32 %269)
  store i32 %270, i32* %13, align 4
  br label %271

271:                                              ; preds = %265, %259
  %272 = load i32, i32* %12, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %306

274:                                              ; preds = %271
  %275 = load i32, i32* %12, align 4
  %276 = icmp sle i32 %275, 64
  br i1 %276, label %277, label %306

277:                                              ; preds = %274
  %278 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %279 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %278, i32 0, i32 0
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %284 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %287 = call i32 @drbd_csum_bio(i64 %282, i32 %285, i8* %286)
  %288 = load %struct.p_data*, %struct.p_data** %8, align 8
  %289 = getelementptr inbounds %struct.p_data, %struct.p_data* %288, i64 1
  %290 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %291 = load i32, i32* %12, align 4
  %292 = call i64 @memcmp(%struct.p_data* %289, i8* %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %277
  %295 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %296 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %297 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %301 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @drbd_warn(%struct.drbd_device* %295, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %299, i32 %303)
  br label %305

305:                                              ; preds = %294, %277
  br label %306

306:                                              ; preds = %305, %274, %271
  br label %307

307:                                              ; preds = %306, %244
  br label %308

308:                                              ; preds = %307, %146
  %309 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %310 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %309, i32 0, i32 0
  %311 = call i32 @mutex_unlock(i32* %310)
  %312 = load i32, i32* %13, align 4
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %308, %46
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local %struct.p_data* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @crypto_shash_digestsize(i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @bio_flags_to_wire(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__send_command(%struct.TYPE_9__*, i32, %struct.drbd_socket*, i32, i32, i32*, i32) #1

declare dso_local i32 @drbd_csum_bio(i64, i32, i8*) #1

declare dso_local i32 @bio_iovec(i32) #1

declare dso_local i32 @_drbd_send_bio(%struct.drbd_peer_device*, i32) #1

declare dso_local i32 @_drbd_send_zc_bio(%struct.drbd_peer_device*, i32) #1

declare dso_local i64 @memcmp(%struct.p_data*, i8*, i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
