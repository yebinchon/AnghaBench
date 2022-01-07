; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_myflush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_myflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_channel = type { i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__**, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)* }
%struct.TYPE_5__ = type { i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@fpga_buf_offset_reg = common dso_local global i64 0, align 8
@fpga_buf_ctrl_reg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Timed out while flushing. Output data may be lost.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilly_channel*, i64)* @xillybus_myflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xillybus_myflush(%struct.xilly_channel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xilly_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.xilly_channel* %0, %struct.xilly_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %16 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %15, i32 0, i32 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %335

24:                                               ; preds = %2
  %25 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %26 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %25, i32 0, i32 9
  %27 = call i32 @mutex_lock_interruptible(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %335

32:                                               ; preds = %24
  %33 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %34 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %320

38:                                               ; preds = %32
  %39 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %40 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %46 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 1
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %48, %44 ], [ %51, %49 ]
  store i32 %53, i32* %10, align 4
  %54 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %55 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %58 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %56, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %62 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %66 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = sub nsw i32 %63, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %226

72:                                               ; preds = %52
  %73 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %74 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %73, i32 0, i32 13
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %84 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %81, i64 %87
  store i8* %88, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %104, %72
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %14, align 8
  %96 = load i8, i8* %94, align 1
  %97 = zext i8 %96 to i32
  %98 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %99 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %89

107:                                              ; preds = %89
  %108 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %109 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %108, i32 0, i32 11
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load i64, i64* %5, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %107
  %115 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %116 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %122 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119, %114
  %126 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %127 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %126, i32 0, i32 11
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  br label %320

130:                                              ; preds = %119, %107
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %135 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %140 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %145 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %144, i32 0, i32 5
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %130
  %147 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %148 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %147, i32 0, i32 11
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %153 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp sge i32 %151, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %159 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  br label %165

160:                                              ; preds = %146
  %161 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %162 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %160, %157
  %166 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %167 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %166, i32 0, i32 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %171, align 8
  %173 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %174 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %173, i32 0, i32 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %177 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %176, i32 0, i32 13
  %178 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %178, i64 %180
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %186 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @DMA_TO_DEVICE, align 4
  %189 = call i32 %172(%struct.TYPE_6__* %175, i32 %184, i32 %187, i32 %188)
  %190 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %191 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %190, i32 0, i32 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = call i32 @mutex_lock(i32* %193)
  %195 = load i32, i32* %8, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %198 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %197, i32 0, i32 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @fpga_buf_offset_reg, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @iowrite32(i32 %196, i64 %203)
  %205 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %206 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = shl i32 %207, 1
  %209 = or i32 %208, 33554432
  %210 = load i32, i32* %9, align 4
  %211 = shl i32 %210, 12
  %212 = or i32 %209, %211
  %213 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %214 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %213, i32 0, i32 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @fpga_buf_ctrl_reg, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @iowrite32(i32 %212, i64 %219)
  %221 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %222 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %221, i32 0, i32 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = call i32 @mutex_unlock(i32* %224)
  br label %238

226:                                              ; preds = %52
  %227 = load i32, i32* %9, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %231 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %237

234:                                              ; preds = %226
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %234, %229
  br label %238

238:                                              ; preds = %237, %165
  %239 = load i32, i32* %13, align 4
  %240 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %241 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load i64, i64* %5, align 8
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %320

245:                                              ; preds = %238
  br label %246

246:                                              ; preds = %245, %318
  %247 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %248 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %247, i32 0, i32 11
  %249 = load i64, i64* %7, align 8
  %250 = call i32 @spin_lock_irqsave(i32* %248, i64 %249)
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %253 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %251, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %246
  %257 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %258 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %257, i32 0, i32 5
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %256, %246
  %260 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %261 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  store i32 %265, i32* %12, align 4
  %266 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %267 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %266, i32 0, i32 11
  %268 = load i64, i64* %7, align 8
  %269 = call i32 @spin_unlock_irqrestore(i32* %267, i64 %268)
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %259
  br label %319

273:                                              ; preds = %259
  %274 = load i64, i64* %5, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %273
  %277 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %278 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %277, i32 0, i32 10
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %281 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = call i32 @wait_event_interruptible(i32 %279, i32 %285)
  br label %310

287:                                              ; preds = %273
  %288 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %289 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %292 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = load i64, i64* %5, align 8
  %298 = call i64 @wait_event_interruptible_timeout(i32 %290, i32 %296, i64 %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %287
  %301 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %302 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %301, i32 0, i32 8
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @dev_warn(i32 %305, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %307 = load i32, i32* @ETIMEDOUT, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %6, align 4
  br label %319

309:                                              ; preds = %287
  br label %310

310:                                              ; preds = %309, %276
  %311 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %312 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32, i32* @EINTR, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %6, align 4
  br label %319

318:                                              ; preds = %310
  br label %246

319:                                              ; preds = %315, %300, %272
  br label %320

320:                                              ; preds = %319, %244, %125, %37
  %321 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %322 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %321, i32 0, i32 9
  %323 = call i32 @mutex_unlock(i32* %322)
  %324 = load %struct.xilly_channel*, %struct.xilly_channel** %4, align 8
  %325 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %324, i32 0, i32 8
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %320
  %331 = load i32, i32* @EIO, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %3, align 4
  br label %335

333:                                              ; preds = %320
  %334 = load i32, i32* %6, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %333, %330, %30, %21
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
