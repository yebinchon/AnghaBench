; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_read_nonraw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_read_nonraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i64, i64, %struct.TYPE_6__, i64, %struct.ldc_packet*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ldc_packet = type { i32, i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@LDC_CHANNEL_DOWN = common dso_local global i64 0, align 8
@LDC_CHANNEL_RESETTING = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@LDC_PACKET_SIZE = common dso_local global i64 0, align 8
@RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"RX read pkt[%02x:%02x:%02x:%02x:%08x:%08x] rcv_nxt[%08x]\0A\00", align 1
@LDC_CTRL = common dso_local global i32 0, align 4
@LDC_DATA = common dso_local global i32 0, align 4
@LDC_ACK = common dso_local global i32 0, align 4
@LDC_NACK = common dso_local global i32 0, align 4
@LDC_INFO = common dso_local global i32 0, align 4
@LDC_LEN = common dso_local global i32 0, align 4
@LDC_START = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@LDC_MODE_UNRELIABLE = common dso_local global i64 0, align 8
@LDC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i32)* @read_nonraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_nonraw(%struct.ldc_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_packet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ldc_packet*, align 8
  %14 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %18, i32 0, i32 0
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %20, i32 0, i32 1
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 2
  %24 = call i64 @sun4v_ldc_rx_get_state(i32 %17, i64* %19, i64* %21, i64* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %29 = call i32 @LDC_ABORT(%struct.ldc_channel* %28)
  store i32 %29, i32* %4, align 4
  br label %333

30:                                               ; preds = %3
  %31 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LDC_CHANNEL_DOWN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %38 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LDC_CHANNEL_RESETTING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @ECONNRESET, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %333

45:                                               ; preds = %36
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %47 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %333

54:                                               ; preds = %45
  store %struct.ldc_packet* null, %struct.ldc_packet** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %55 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %56 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %292
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %61 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %66, i32 0, i32 5
  %68 = load %struct.ldc_packet*, %struct.ldc_packet** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %71 = udiv i64 %69, %70
  %72 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %68, i64 %71
  store %struct.ldc_packet* %72, %struct.ldc_packet** %13, align 8
  %73 = load i32, i32* @RX, align 4
  %74 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %75 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %78 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %81 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %84 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %87 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %90 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %95 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ldcdbg(i32 %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85, i64 %88, i32 %93, i64 %96)
  %98 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %99 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %100 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @rx_seq_ok(%struct.ldc_channel* %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %58
  %109 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %110 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %111 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %112 = call i32 @rx_bad_seq(%struct.ldc_channel* %109, %struct.ldc_packet* %110, %struct.ldc_packet* %111)
  store i32 %112, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %293

113:                                              ; preds = %58
  %114 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %115 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @LDC_CTRL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %122 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %123 = call i32 @process_control_frame(%struct.ldc_channel* %121, %struct.ldc_packet* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %293

127:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %113
  %129 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %130 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %133 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  %134 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %135 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @LDC_DATA, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %128
  %141 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i64 @rx_advance(%struct.ldc_channel* %141, i64 %142)
  store i64 %143, i64* %10, align 8
  br label %293

144:                                              ; preds = %128
  %145 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %146 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @LDC_ACK, align 4
  %149 = load i32, i32* @LDC_NACK, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %155 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %156 = call i32 @data_ack_nack(%struct.ldc_channel* %154, %struct.ldc_packet* %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %293

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %144
  %162 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %163 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @LDC_INFO, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %161
  %169 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i64 @rx_advance(%struct.ldc_channel* %169, i64 %170)
  store i64 %171, i64* %10, align 8
  %172 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @rx_set_head(%struct.ldc_channel* %172, i64 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %293

178:                                              ; preds = %168
  br label %278

179:                                              ; preds = %161
  %180 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %181 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LDC_LEN, align 4
  %184 = and i32 %182, %183
  store i32 %184, i32* %14, align 4
  %185 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %186 = icmp eq %struct.ldc_packet* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %179
  %188 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %189 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @LDC_START, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %187, %179
  %195 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %196 = icmp ne %struct.ldc_packet* %195, null
  br i1 %196, label %197, label %223

197:                                              ; preds = %194
  %198 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %199 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @LDC_START, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %197, %187
  %205 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %206 = icmp ne %struct.ldc_packet* %205, null
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %209 = load i64, i64* %10, align 8
  %210 = call i64 @rx_advance(%struct.ldc_channel* %208, i64 %209)
  store i64 %210, i64* %10, align 8
  br label %211

211:                                              ; preds = %207, %204
  %212 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @rx_set_head(%struct.ldc_channel* %212, i64 %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %293

218:                                              ; preds = %211
  %219 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %220 = icmp ne %struct.ldc_packet* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  br label %278

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222, %197, %194
  %224 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %225 = icmp ne %struct.ldc_packet* %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  store %struct.ldc_packet* %227, %struct.ldc_packet** %8, align 8
  br label %228

228:                                              ; preds = %226, %223
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %12, align 4
  %232 = sub i32 %230, %231
  %233 = icmp ugt i32 %229, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* @EMSGSIZE, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %11, align 4
  br label %293

237:                                              ; preds = %228
  %238 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %239 = load i64, i64* %10, align 8
  %240 = call i64 @rx_advance(%struct.ldc_channel* %238, i64 %239)
  store i64 %240, i64* %10, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %243 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @LDC_MODE_UNRELIABLE, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %237
  %249 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %250 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  br label %259

253:                                              ; preds = %237
  %254 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %255 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  br label %259

259:                                              ; preds = %253, %248
  %260 = phi i32 [ %252, %248 ], [ %258, %253 ]
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @memcpy(i8* %241, i32 %260, i32 %261)
  %263 = load i32, i32* %14, align 4
  %264 = load i8*, i8** %6, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr i8, i8* %264, i64 %265
  store i8* %266, i8** %6, align 8
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, %267
  store i32 %269, i32* %12, align 4
  %270 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %271 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @LDC_STOP, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %259
  br label %293

277:                                              ; preds = %259
  br label %278

278:                                              ; preds = %277, %221, %178
  %279 = load i64, i64* %10, align 8
  %280 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %281 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %279, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %278
  %285 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %286 = load i64, i64* %10, align 8
  %287 = call i32 @rx_data_wait(%struct.ldc_channel* %285, i64 %286)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %293

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %278
  br label %58

293:                                              ; preds = %290, %276, %234, %217, %177, %159, %140, %126, %108
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %293
  %297 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %298 = load i64, i64* %10, align 8
  %299 = call i32 @rx_set_head(%struct.ldc_channel* %297, i64 %298)
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %296, %293
  %301 = load i32, i32* %11, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %305 = icmp ne %struct.ldc_packet* %304, null
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %308 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = sub nsw i64 %309, 1
  %311 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %312 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %311, i32 0, i32 4
  store i64 %310, i64* %312, align 8
  br label %313

313:                                              ; preds = %306, %303, %300
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %331, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %12, align 4
  store i32 %317, i32* %11, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %316
  %321 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %322 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @LDC_MODE_UNRELIABLE, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %320
  %328 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %329 = call i32 @send_data_ack(%struct.ldc_channel* %328)
  br label %330

330:                                              ; preds = %327, %320, %316
  br label %331

331:                                              ; preds = %330, %313
  %332 = load i32, i32* %11, align 4
  store i32 %332, i32* %4, align 4
  br label %333

333:                                              ; preds = %331, %53, %42, %27
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i64 @sun4v_ldc_rx_get_state(i32, i64*, i64*, i64*) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldcdbg(i32, i8*, i32, i32, i32, i32, i64, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rx_seq_ok(%struct.ldc_channel*, i64) #1

declare dso_local i32 @rx_bad_seq(%struct.ldc_channel*, %struct.ldc_packet*, %struct.ldc_packet*) #1

declare dso_local i32 @process_control_frame(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i64 @rx_advance(%struct.ldc_channel*, i64) #1

declare dso_local i32 @data_ack_nack(%struct.ldc_channel*, %struct.ldc_packet*) #1

declare dso_local i32 @rx_set_head(%struct.ldc_channel*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @rx_data_wait(%struct.ldc_channel*, i64) #1

declare dso_local i32 @send_data_ack(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
