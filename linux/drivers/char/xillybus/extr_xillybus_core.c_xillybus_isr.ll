; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_3__*, i32, i32, %struct.xilly_channel** }
%struct.TYPE_3__ = type { i32 (%struct.xilly_endpoint*, i32, i32, i32)*, i32 (%struct.xilly_endpoint*, i32, i32, i32)* }
%struct.xilly_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Sending a NACK on counter %x (instead of %x) on entry %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Lost sync with interrupt messages. Stopping.\0A\00", align 1
@fpga_msg_ctrl_reg = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Bad interrupt message. Stopping.\0A\00", align 1
@xillybus_wq = common dso_local global i32 0, align 4
@XILLY_RX_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [251 x i8] c"FPGA reported a fatal error. This means that the low-level communication with the device has failed. This hardware problem is most likely unrelated to Xillybus (neither kernel module nor FPGA core), but reports are still welcome. All I/O is aborted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xillybus_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xilly_endpoint*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xilly_channel*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.xilly_endpoint*
  store %struct.xilly_endpoint* %17, %struct.xilly_endpoint** %6, align 8
  %18 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %19 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %22 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %28 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %27, i32 0, i32 9
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (%struct.xilly_endpoint*, i32, i32, i32)*, i32 (%struct.xilly_endpoint*, i32, i32, i32)** %30, align 8
  %32 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %33 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %34 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %37 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 %31(%struct.xilly_endpoint* %32, i32 %35, i32 %38, i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %126, %2
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %129

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 28
  %53 = and i32 %52, 15
  %54 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %55 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %115

58:                                               ; preds = %45
  %59 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @malformed_message(%struct.xilly_endpoint* %59, i32* %63)
  %65 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %66 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 28
  %75 = and i32 %74, 15
  %76 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %77 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sdiv i32 %79, 2
  %81 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %80)
  %82 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %83 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = icmp sgt i32 %85, 10
  br i1 %86, label %87, label %92

87:                                               ; preds = %58
  %88 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %89 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %113

92:                                               ; preds = %58
  %93 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %94 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %93, i32 0, i32 9
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32 (%struct.xilly_endpoint*, i32, i32, i32)*, i32 (%struct.xilly_endpoint*, i32, i32, i32)** %96, align 8
  %98 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %99 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %100 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %103 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %106 = call i32 %97(%struct.xilly_endpoint* %98, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %108 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @fpga_msg_ctrl_reg, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 1, i64 %111)
  br label %113

113:                                              ; preds = %92, %87
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %114, i32* %3, align 4
  br label %482

115:                                              ; preds = %45
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 4194304
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %129

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %9, align 4
  br label %41

129:                                              ; preds = %123, %41
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp uge i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %135 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %138, i32* %3, align 4
  br label %482

139:                                              ; preds = %129
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %448, %139
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %451

146:                                              ; preds = %142
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 24
  %153 = and i32 %152, 255
  store i32 %153, i32* %10, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 1
  %166 = and i32 %165, 2047
  store i32 %166, i32* %11, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 12
  %173 = and i32 %172, 1023
  store i32 %173, i32* %12, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 268435455
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %10, align 4
  switch i32 %181, label %440 [
    i32 128, label %182
    i32 130, label %287
    i32 129, label %356
    i32 131, label %363
    i32 132, label %430
  ]

182:                                              ; preds = %146
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %185 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = icmp ugt i32 %183, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188, %182
  %192 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = call i32 @malformed_message(%struct.xilly_endpoint* %192, i32* %196)
  br label %447

198:                                              ; preds = %188
  %199 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %200 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %199, i32 0, i32 12
  %201 = load %struct.xilly_channel**, %struct.xilly_channel*** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %201, i64 %203
  %205 = load %struct.xilly_channel*, %struct.xilly_channel** %204, align 8
  store %struct.xilly_channel* %205, %struct.xilly_channel** %15, align 8
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %247

208:                                              ; preds = %198
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %211 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp uge i32 %209, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %208
  %215 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i32 @malformed_message(%struct.xilly_endpoint* %215, i32* %219)
  br label %447

221:                                              ; preds = %208
  %222 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %223 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %222, i32 0, i32 9
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %227 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %226, i32 0, i32 19
  %228 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %228, i64 %230
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  store i32 %225, i32* %233, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %236 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %238 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %237, i32 0, i32 10
  store i32 0, i32* %238, align 8
  %239 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %240 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %239, i32 0, i32 11
  store i32 0, i32* %240, align 4
  %241 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %242 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %241, i32 0, i32 9
  %243 = call i32 @spin_unlock(i32* %242)
  %244 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %245 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %244, i32 0, i32 8
  %246 = call i32 @wake_up_interruptible(i32* %245)
  br label %286

247:                                              ; preds = %198
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %250 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp uge i32 %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = call i32 @malformed_message(%struct.xilly_endpoint* %254, i32* %258)
  br label %447

260:                                              ; preds = %247
  %261 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %262 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %261, i32 0, i32 17
  %263 = call i32 @spin_lock(i32* %262)
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %266 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %268 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %267, i32 0, i32 18
  store i32 0, i32* %268, align 8
  %269 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %270 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %269, i32 0, i32 17
  %271 = call i32 @spin_unlock(i32* %270)
  %272 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %273 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %272, i32 0, i32 16
  %274 = call i32 @wake_up_interruptible(i32* %273)
  %275 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %276 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %275, i32 0, i32 15
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %260
  %280 = load i32, i32* @xillybus_wq, align 4
  %281 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %282 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %281, i32 0, i32 14
  %283 = load i32, i32* @XILLY_RX_TIMEOUT, align 4
  %284 = call i32 @queue_delayed_work(i32 %280, i32* %282, i32 %283)
  br label %285

285:                                              ; preds = %279, %260
  br label %286

286:                                              ; preds = %285, %221
  br label %447

287:                                              ; preds = %146
  %288 = load i32, i32* %11, align 4
  %289 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %290 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = icmp ugt i32 %288, %291
  br i1 %292, label %310, label %293

293:                                              ; preds = %287
  %294 = load i32, i32* %11, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %14, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %296
  %300 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %301 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %300, i32 0, i32 12
  %302 = load %struct.xilly_channel**, %struct.xilly_channel*** %301, align 8
  %303 = load i32, i32* %11, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %302, i64 %304
  %306 = load %struct.xilly_channel*, %struct.xilly_channel** %305, align 8
  %307 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %306, i32 0, i32 13
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %299, %296, %293, %287
  %311 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %312 = load i32*, i32** %7, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = call i32 @malformed_message(%struct.xilly_endpoint* %311, i32* %315)
  br label %447

317:                                              ; preds = %299
  %318 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %319 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %318, i32 0, i32 12
  %320 = load %struct.xilly_channel**, %struct.xilly_channel*** %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %320, i64 %322
  %324 = load %struct.xilly_channel*, %struct.xilly_channel** %323, align 8
  store %struct.xilly_channel* %324, %struct.xilly_channel** %15, align 8
  %325 = load i32, i32* %12, align 4
  %326 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %327 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = icmp uge i32 %325, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %317
  %331 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %332 = load i32*, i32** %7, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = call i32 @malformed_message(%struct.xilly_endpoint* %331, i32* %335)
  br label %447

337:                                              ; preds = %317
  %338 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %339 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %338, i32 0, i32 9
  %340 = call i32 @spin_lock(i32* %339)
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %343 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %341, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %337
  %347 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %348 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %347, i32 0, i32 5
  store i32 1, i32* %348, align 4
  br label %349

349:                                              ; preds = %346, %337
  %350 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %351 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %350, i32 0, i32 9
  %352 = call i32 @spin_unlock(i32* %351)
  %353 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %354 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %353, i32 0, i32 12
  %355 = call i32 @wake_up_interruptible(i32* %354)
  br label %447

356:                                              ; preds = %146
  %357 = load i32, i32* %13, align 4
  %358 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %359 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %358, i32 0, i32 5
  store i32 %357, i32* %359, align 8
  %360 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %361 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %360, i32 0, i32 11
  %362 = call i32 @wake_up_interruptible(i32* %361)
  br label %447

363:                                              ; preds = %146
  %364 = load i32, i32* %11, align 4
  %365 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %366 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = icmp ugt i32 %364, %367
  br i1 %368, label %386, label %369

369:                                              ; preds = %363
  %370 = load i32, i32* %11, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %386, label %372

372:                                              ; preds = %369
  %373 = load i32, i32* %14, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %386

375:                                              ; preds = %372
  %376 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %377 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %376, i32 0, i32 12
  %378 = load %struct.xilly_channel**, %struct.xilly_channel*** %377, align 8
  %379 = load i32, i32* %11, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %378, i64 %380
  %382 = load %struct.xilly_channel*, %struct.xilly_channel** %381, align 8
  %383 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %375, %372, %369, %363
  %387 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = call i32 @malformed_message(%struct.xilly_endpoint* %387, i32* %391)
  br label %447

393:                                              ; preds = %375
  %394 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %395 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %394, i32 0, i32 12
  %396 = load %struct.xilly_channel**, %struct.xilly_channel*** %395, align 8
  %397 = load i32, i32* %11, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.xilly_channel*, %struct.xilly_channel** %396, i64 %398
  %400 = load %struct.xilly_channel*, %struct.xilly_channel** %399, align 8
  store %struct.xilly_channel* %400, %struct.xilly_channel** %15, align 8
  %401 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %402 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %401, i32 0, i32 9
  %403 = call i32 @spin_lock(i32* %402)
  %404 = load i32, i32* %12, align 4
  %405 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %406 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %405, i32 0, i32 6
  store i32 %404, i32* %406, align 8
  %407 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %408 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %407, i32 0, i32 11
  store i32 0, i32* %408, align 4
  %409 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %410 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %409, i32 0, i32 10
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %393
  %414 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %415 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %12, align 4
  %418 = icmp eq i32 %416, %417
  br label %419

419:                                              ; preds = %413, %393
  %420 = phi i1 [ false, %393 ], [ %418, %413 ]
  %421 = zext i1 %420 to i32
  %422 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %423 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 4
  %424 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %425 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %424, i32 0, i32 9
  %426 = call i32 @spin_unlock(i32* %425)
  %427 = load %struct.xilly_channel*, %struct.xilly_channel** %15, align 8
  %428 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %427, i32 0, i32 8
  %429 = call i32 @wake_up_interruptible(i32* %428)
  br label %447

430:                                              ; preds = %146
  %431 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %432 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %431, i32 0, i32 6
  store i32 1, i32* %432, align 4
  %433 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %434 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %433, i32 0, i32 11
  %435 = call i32 @wake_up_interruptible(i32* %434)
  %436 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %437 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %436, i32 0, i32 10
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @dev_err(i32 %438, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.3, i64 0, i64 0))
  br label %447

440:                                              ; preds = %146
  %441 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %442 = load i32*, i32** %7, align 8
  %443 = load i32, i32* %9, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = call i32 @malformed_message(%struct.xilly_endpoint* %441, i32* %445)
  br label %447

447:                                              ; preds = %440, %430, %419, %386, %356, %349, %330, %310, %286, %253, %214, %191
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %9, align 4
  %450 = add nsw i32 %449, 2
  store i32 %450, i32* %9, align 4
  br label %142

451:                                              ; preds = %142
  %452 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %453 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %452, i32 0, i32 9
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 0
  %456 = load i32 (%struct.xilly_endpoint*, i32, i32, i32)*, i32 (%struct.xilly_endpoint*, i32, i32, i32)** %455, align 8
  %457 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %458 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %459 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %458, i32 0, i32 8
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %462 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %465 = call i32 %456(%struct.xilly_endpoint* %457, i32 %460, i32 %463, i32 %464)
  %466 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %467 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, 1
  %470 = and i32 %469, 15
  %471 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %472 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %471, i32 0, i32 2
  store i32 %470, i32* %472, align 4
  %473 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %474 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %473, i32 0, i32 3
  store i32 0, i32* %474, align 8
  %475 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %6, align 8
  %476 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %475, i32 0, i32 7
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @fpga_msg_ctrl_reg, align 8
  %479 = add nsw i64 %477, %478
  %480 = call i32 @iowrite32(i32 3, i64 %479)
  %481 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %481, i32* %3, align 4
  br label %482

482:                                              ; preds = %451, %133, %113
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

declare dso_local i32 @malformed_message(%struct.xilly_endpoint*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
