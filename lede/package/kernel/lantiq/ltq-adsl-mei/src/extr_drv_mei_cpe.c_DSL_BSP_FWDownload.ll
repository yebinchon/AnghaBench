; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_DSL_BSP_FWDownload.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_DSL_BSP_FWDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i64, i8* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Firmware size is too small!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Firmware size is too large!\0A\00", align 1
@FREE_ALL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Error: No memory space left.\0A\00", align 1
@XDATA_REGISTER = common dso_local global i32 0, align 4
@SDRAM_SEGMENT_SIZE = common dso_local global i32 0, align 4
@FREE_RELOAD = common dso_local global i8* null, align 8
@FREE_SHOWTIME = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"kmalloc memory fail!\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"-> IFX_MEI_BarUpdate()\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error: Firmware size=0! \0A\00", align 1
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@DSL_DEV_MEI_ERR_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSL_BSP_FWDownload(i32* %0, i8* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i8* null, i8** %17, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %197

31:                                               ; preds = %5
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %6, align 4
  br label %307

37:                                               ; preds = %31
  %38 = bitcast %struct.TYPE_7__* %12 to i8*
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @copy_from_user(i8* %38, i8* %39, i64 16)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le32_to_cpu(i64 %42)
  %44 = add nsw i32 %43, 8
  %45 = load i32*, i32** %7, align 8
  %46 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1048576
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %6, align 4
  br label %307

56:                                               ; preds = %37
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @IFX_MEI_ResetARC(i32* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @IFX_MEI_HaltArc(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @FREE_ALL, align 4
  %63 = call i32 @IFX_MEI_DFEMemoryFree(i32* %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IFX_MEI_DFEMemoryAlloc(i32* %64, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %302

74:                                               ; preds = %56
  store i32 0, i32* %19, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* @XDATA_REGISTER, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %110

84:                                               ; preds = %79
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le32_to_cpu(i64 %92)
  %94 = icmp slt i32 %87, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load i8*, i8** @FREE_RELOAD, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store i8* %96, i8** %101, align 8
  br label %109

102:                                              ; preds = %84
  %103 = load i8*, i8** @FREE_SHOWTIME, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  store i8* %103, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %95
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %75

113:                                              ; preds = %75
  %114 = load i32, i32* %18, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = bitcast i8* %121 to %struct.TYPE_7__*
  %123 = load i32*, i32** %7, align 8
  %124 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %125, align 8
  %126 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kmalloc(i32 %126, i32 %127)
  store i8* %128, i8** %17, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %113
  %132 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %18, align 4
  br label %302

135:                                              ; preds = %113
  %136 = load i8*, i8** %17, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = and i64 %137, 1023
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %135
  %141 = load i8*, i8** %17, align 8
  %142 = call i32 @kfree(i8* %141)
  %143 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %144 = add nsw i32 %143, 1024
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i8* @kmalloc(i32 %144, i32 %145)
  store i8* %146, i8** %17, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %18, align 4
  br label %302

153:                                              ; preds = %140
  %154 = load i8*, i8** %17, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 1023
  %156 = ptrtoint i8* %155 to i64
  %157 = and i64 %156, -1024
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %160 = load i32, i32* @XDATA_REGISTER, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i8* %158, i8** %163, align 8
  br label %171

164:                                              ; preds = %135
  %165 = load i8*, i8** %17, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %167 = load i32, i32* @XDATA_REGISTER, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i8* %165, i8** %170, align 8
  br label %171

171:                                              ; preds = %164, %153
  %172 = load i8*, i8** %17, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %174 = load i32, i32* @XDATA_REGISTER, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  %178 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %180 = load i32, i32* @XDATA_REGISTER, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 2
  store i32 %178, i32* %183, align 8
  %184 = load i8*, i8** @FREE_RELOAD, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %186 = load i32, i32* @XDATA_REGISTER, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 4
  store i8* %184, i8** %189, align 8
  %190 = call i32 @IFX_MEI_DMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %191 = load i32*, i32** %7, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %192)
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @IFX_MEI_BarUpdate(i32* %191, i32 %195)
  br label %206

197:                                              ; preds = %5
  %198 = load i32*, i32** %7, align 8
  %199 = call %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32* %198)
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %302

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %205, %171
  store i64 0, i64* %14, align 8
  br label %207

207:                                              ; preds = %282, %206
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %9, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %294

211:                                              ; preds = %207
  %212 = load i64*, i64** %10, align 8
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %14, align 8
  %215 = add i64 %213, %214
  %216 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %217 = sext i32 %216 to i64
  %218 = urem i64 %215, %217
  store i64 %218, i64* %20, align 8
  %219 = load i64*, i64** %10, align 8
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %14, align 8
  %222 = add i64 %220, %221
  %223 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %224 = sext i32 %223 to i64
  %225 = udiv i64 %222, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %19, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = load i64, i64* %20, align 8
  %235 = add i64 %233, %234
  %236 = call i64 @KSEG1ADDR(i64 %235)
  %237 = inttoptr i64 %236 to i8*
  store i8* %237, i8** %16, align 8
  %238 = load i64, i64* %9, align 8
  %239 = load i64, i64* %14, align 8
  %240 = sub i64 %238, %239
  %241 = load i64, i64* %20, align 8
  %242 = add i64 %240, %241
  %243 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp ugt i64 %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %211
  %247 = load i32, i32* @SDRAM_SEGMENT_SIZE, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %20, align 8
  %250 = sub nsw i64 %248, %249
  store i64 %250, i64* %15, align 8
  br label %255

251:                                              ; preds = %211
  %252 = load i64, i64* %9, align 8
  %253 = load i64, i64* %14, align 8
  %254 = sub i64 %252, %253
  store i64 %254, i64* %15, align 8
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i8*, i8** %16, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = load i64, i64* %14, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = load i64, i64* %15, align 8
  %261 = call i32 @copy_from_user(i8* %256, i8* %259, i64 %260)
  store i64 0, i64* %20, align 8
  br label %262

262:                                              ; preds = %279, %255
  %263 = load i64, i64* %20, align 8
  %264 = load i64, i64* %15, align 8
  %265 = udiv i64 %264, 4
  %266 = icmp ult i64 %263, %265
  br i1 %266, label %267, label %282

267:                                              ; preds = %262
  %268 = load i8*, i8** %16, align 8
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %20, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @le32_to_cpu(i64 %272)
  %274 = sext i32 %273 to i64
  %275 = load i8*, i8** %16, align 8
  %276 = bitcast i8* %275 to i64*
  %277 = load i64, i64* %20, align 8
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  store i64 %274, i64* %278, align 8
  br label %279

279:                                              ; preds = %267
  %280 = load i64, i64* %20, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %20, align 8
  br label %262

282:                                              ; preds = %262
  %283 = load i64, i64* %15, align 8
  %284 = load i64, i64* %14, align 8
  %285 = add i64 %284, %283
  store i64 %285, i64* %14, align 8
  %286 = load i64, i64* %15, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, %286
  store i64 %293, i64* %291, align 8
  br label %207

294:                                              ; preds = %207
  %295 = load i64, i64* %9, align 8
  %296 = load i64*, i64** %10, align 8
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, %295
  store i64 %298, i64* %296, align 8
  %299 = load i64, i64* %9, align 8
  %300 = load i64*, i64** %11, align 8
  store i64 %299, i64* %300, align 8
  %301 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  store i32 %301, i32* %6, align 4
  br label %307

302:                                              ; preds = %203, %149, %131, %72
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* @FREE_ALL, align 4
  %305 = call i32 @IFX_MEI_DFEMemoryFree(i32* %303, i32 %304)
  %306 = load i32, i32* @DSL_DEV_MEI_ERR_FAILURE, align 4
  store i32 %306, i32* %6, align 4
  br label %307

307:                                              ; preds = %302, %294, %53, %34
  %308 = load i32, i32* %6, align 4
  ret i32 %308
}

declare dso_local %struct.TYPE_8__* @DSL_DEV_PRIVATE(i32*) #1

declare dso_local i32 @IFX_MEI_DMSG(i8*) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*) #1

declare dso_local i32 @copy_from_user(i8*, i8*, i64) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @IFX_MEI_ResetARC(i32*) #1

declare dso_local i32 @IFX_MEI_HaltArc(i32*) #1

declare dso_local i32 @IFX_MEI_DFEMemoryFree(i32*, i32) #1

declare dso_local i32 @IFX_MEI_DFEMemoryAlloc(i32*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @IFX_MEI_BarUpdate(i32*, i32) #1

declare dso_local i64 @KSEG1ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
