; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkmeta.c_ijkmeta_set_avformat_context_l.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/extr_ijkmeta.c_ijkmeta_set_avformat_context_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64, i32, %struct.TYPE_22__**, %struct.TYPE_17__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_24__ = type { i8* }

@IJKM_KEY_FORMAT = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@IJKM_KEY_DURATION_US = common dso_local global i32 0, align 4
@IJKM_KEY_START_US = common dso_local global i32 0, align 4
@IJKM_KEY_BITRATE = common dso_local global i32 0, align 4
@IJKM_KEY_CODEC_NAME = common dso_local global i32 0, align 4
@FF_PROFILE_UNKNOWN = common dso_local global i64 0, align 8
@IJKM_KEY_CODEC_PROFILE_ID = common dso_local global i32 0, align 4
@IJKM_KEY_CODEC_PROFILE = common dso_local global i32 0, align 4
@IJKM_KEY_CODEC_LONG_NAME = common dso_local global i32 0, align 4
@IJKM_KEY_CODEC_LEVEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@IJKM_KEY_CODEC_PIXEL_FORMAT = common dso_local global i32 0, align 4
@IJKM_KEY_TYPE = common dso_local global i32 0, align 4
@IJKM_VAL_TYPE__VIDEO = common dso_local global i8* null, align 8
@IJKM_KEY_WIDTH = common dso_local global i32 0, align 4
@IJKM_KEY_HEIGHT = common dso_local global i32 0, align 4
@IJKM_KEY_SAR_NUM = common dso_local global i32 0, align 4
@IJKM_KEY_SAR_DEN = common dso_local global i32 0, align 4
@IJKM_KEY_FPS_NUM = common dso_local global i32 0, align 4
@IJKM_KEY_FPS_DEN = common dso_local global i32 0, align 4
@IJKM_KEY_TBR_NUM = common dso_local global i32 0, align 4
@IJKM_KEY_TBR_DEN = common dso_local global i32 0, align 4
@IJKM_VAL_TYPE__AUDIO = common dso_local global i8* null, align 8
@IJKM_KEY_SAMPLE_RATE = common dso_local global i32 0, align 4
@IJKM_KEY_CHANNEL_LAYOUT = common dso_local global i32 0, align 4
@IJKM_VAL_TYPE__TIMEDTEXT = common dso_local global i8* null, align 8
@IJKM_VAL_TYPE__UNKNOWN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@IJKM_KEY_LANGUAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ijkmeta_set_avformat_context_l(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = icmp ne %struct.TYPE_23__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %387

20:                                               ; preds = %16
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @IJKM_KEY_FORMAT, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ijkmeta_set_string_l(i32* %33, i32 %34, i8* %39)
  br label %41

41:                                               ; preds = %32, %25, %20
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @IJKM_KEY_DURATION_US, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ijkmeta_set_int64_l(i32* %48, i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @IJKM_KEY_START_US, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ijkmeta_set_int64_l(i32* %61, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @IJKM_KEY_BITRATE, align 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ijkmeta_set_int64_l(i32* %73, i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %72, %67
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %379, %79
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %382

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 @ijkmeta_destroy_p(i32** %5)
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %94, i64 %96
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %7, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %100 = icmp ne %struct.TYPE_22__* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = icmp ne %struct.TYPE_25__* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %91
  br label %379

107:                                              ; preds = %101
  %108 = call i32* (...) @ijkmeta_create()
  store i32* %108, i32** %5, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %379

112:                                              ; preds = %107
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  store %struct.TYPE_25__* %115, %struct.TYPE_25__** %8, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @avcodec_get_name(i32 %118)
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @IJKM_KEY_CODEC_NAME, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @ijkmeta_set_string_l(i32* %123, i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %122, %112
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FF_PROFILE_UNKNOWN, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %193

133:                                              ; preds = %127
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.TYPE_16__* @avcodec_find_decoder(i32 %136)
  store %struct.TYPE_16__* %137, %struct.TYPE_16__** %10, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %139 = icmp ne %struct.TYPE_16__* %138, null
  br i1 %139, label %140, label %192

140:                                              ; preds = %133
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* @IJKM_KEY_CODEC_PROFILE_ID, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ijkmeta_set_int64_l(i32* %141, i32 %142, i64 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i8* @av_get_profile_name(%struct.TYPE_16__* %147, i64 %150)
  store i8* %151, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* @IJKM_KEY_CODEC_PROFILE, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @ijkmeta_set_string_l(i32* %155, i32 %156, i8* %157)
  br label %159

159:                                              ; preds = %154, %140
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* @IJKM_KEY_CODEC_LONG_NAME, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @ijkmeta_set_string_l(i32* %165, i32 %166, i8* %169)
  br label %171

171:                                              ; preds = %164, %159
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* @IJKM_KEY_CODEC_LEVEL, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @ijkmeta_set_int64_l(i32* %172, i32 %173, i64 %176)
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %171
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @IJKM_KEY_CODEC_PIXEL_FORMAT, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i8* @av_get_pix_fmt_name(i64 %188)
  %190 = call i32 @ijkmeta_set_string_l(i32* %184, i32 %185, i8* %189)
  br label %191

191:                                              ; preds = %183, %171
  br label %192

192:                                              ; preds = %191, %133
  br label %193

193:                                              ; preds = %192, %127
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %195 = call i64 @get_bit_rate(%struct.TYPE_25__* %194)
  store i64 %195, i64* %12, align 8
  %196 = load i64, i64* %12, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* @IJKM_KEY_BITRATE, align 4
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @ijkmeta_set_int64_l(i32* %199, i32 %200, i64 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  switch i32 %206, label %351 [
    i32 128, label %207
    i32 130, label %317
    i32 129, label %346
  ]

207:                                              ; preds = %203
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @IJKM_KEY_TYPE, align 4
  %210 = load i8*, i8** @IJKM_VAL_TYPE__VIDEO, align 8
  %211 = call i32 @ijkmeta_set_string_l(i32* %208, i32 %209, i8* %210)
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* @IJKM_KEY_WIDTH, align 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ijkmeta_set_int64_l(i32* %217, i32 %218, i64 %221)
  br label %223

223:                                              ; preds = %216, %207
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* @IJKM_KEY_HEIGHT, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @ijkmeta_set_int64_l(i32* %229, i32 %230, i64 %233)
  br label %235

235:                                              ; preds = %228, %223
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %235
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %241
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* @IJKM_KEY_SAR_NUM, align 4
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @ijkmeta_set_int64_l(i32* %248, i32 %249, i64 %253)
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* @IJKM_KEY_SAR_DEN, align 4
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @ijkmeta_set_int64_l(i32* %255, i32 %256, i64 %260)
  br label %262

262:                                              ; preds = %247, %241, %235
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %262
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %268
  %275 = load i32*, i32** %5, align 8
  %276 = load i32, i32* @IJKM_KEY_FPS_NUM, align 4
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @ijkmeta_set_int64_l(i32* %275, i32 %276, i64 %280)
  %282 = load i32*, i32** %5, align 8
  %283 = load i32, i32* @IJKM_KEY_FPS_DEN, align 4
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @ijkmeta_set_int64_l(i32* %282, i32 %283, i64 %287)
  br label %289

289:                                              ; preds = %274, %268, %262
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %316

295:                                              ; preds = %289
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %316

301:                                              ; preds = %295
  %302 = load i32*, i32** %5, align 8
  %303 = load i32, i32* @IJKM_KEY_TBR_NUM, align 4
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @ijkmeta_set_int64_l(i32* %302, i32 %303, i64 %307)
  %309 = load i32*, i32** %5, align 8
  %310 = load i32, i32* @IJKM_KEY_TBR_DEN, align 4
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @ijkmeta_set_int64_l(i32* %309, i32 %310, i64 %314)
  br label %316

316:                                              ; preds = %301, %295, %289
  br label %356

317:                                              ; preds = %203
  %318 = load i32*, i32** %5, align 8
  %319 = load i32, i32* @IJKM_KEY_TYPE, align 4
  %320 = load i8*, i8** @IJKM_VAL_TYPE__AUDIO, align 8
  %321 = call i32 @ijkmeta_set_string_l(i32* %318, i32 %319, i8* %320)
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 6
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %317
  %327 = load i32*, i32** %5, align 8
  %328 = load i32, i32* @IJKM_KEY_SAMPLE_RATE, align 4
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @ijkmeta_set_int64_l(i32* %327, i32 %328, i64 %331)
  br label %333

333:                                              ; preds = %326, %317
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 7
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %333
  %339 = load i32*, i32** %5, align 8
  %340 = load i32, i32* @IJKM_KEY_CHANNEL_LAYOUT, align 4
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 7
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @ijkmeta_set_int64_l(i32* %339, i32 %340, i64 %343)
  br label %345

345:                                              ; preds = %338, %333
  br label %356

346:                                              ; preds = %203
  %347 = load i32*, i32** %5, align 8
  %348 = load i32, i32* @IJKM_KEY_TYPE, align 4
  %349 = load i8*, i8** @IJKM_VAL_TYPE__TIMEDTEXT, align 8
  %350 = call i32 @ijkmeta_set_string_l(i32* %347, i32 %348, i8* %349)
  br label %356

351:                                              ; preds = %203
  %352 = load i32*, i32** %5, align 8
  %353 = load i32, i32* @IJKM_KEY_TYPE, align 4
  %354 = load i8*, i8** @IJKM_VAL_TYPE__UNKNOWN, align 8
  %355 = call i32 @ijkmeta_set_string_l(i32* %352, i32 %353, i8* %354)
  br label %356

356:                                              ; preds = %351, %346, %345, %316
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call %struct.TYPE_24__* @av_dict_get(i32 %359, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_24__* %360, %struct.TYPE_24__** %13, align 8
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %362 = icmp ne %struct.TYPE_24__* %361, null
  br i1 %362, label %363, label %375

363:                                              ; preds = %356
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = icmp ne i8* %366, null
  br i1 %367, label %368, label %375

368:                                              ; preds = %363
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* @IJKM_KEY_LANGUAGE, align 4
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @ijkmeta_set_string_l(i32* %369, i32 %370, i8* %373)
  br label %375

375:                                              ; preds = %368, %363, %356
  %376 = load i32*, i32** %3, align 8
  %377 = load i32*, i32** %5, align 8
  %378 = call i32 @ijkmeta_append_child_l(i32* %376, i32* %377)
  store i32* null, i32** %5, align 8
  br label %379

379:                                              ; preds = %375, %111, %106
  %380 = load i32, i32* %6, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %6, align 4
  br label %80

382:                                              ; preds = %80
  %383 = load i32*, i32** %5, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %387, label %385

385:                                              ; preds = %382
  %386 = call i32 @ijkmeta_destroy_p(i32** %5)
  br label %387

387:                                              ; preds = %19, %385, %382
  ret void
}

declare dso_local i32 @ijkmeta_set_string_l(i32*, i32, i8*) #1

declare dso_local i32 @ijkmeta_set_int64_l(i32*, i32, i64) #1

declare dso_local i32 @ijkmeta_destroy_p(i32**) #1

declare dso_local i32* @ijkmeta_create(...) #1

declare dso_local i8* @avcodec_get_name(i32) #1

declare dso_local %struct.TYPE_16__* @avcodec_find_decoder(i32) #1

declare dso_local i8* @av_get_profile_name(%struct.TYPE_16__*, i64) #1

declare dso_local i8* @av_get_pix_fmt_name(i64) #1

declare dso_local i64 @get_bit_rate(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @ijkmeta_append_child_l(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
