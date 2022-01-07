; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadDeltaPlayerstate.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadDeltaPlayerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i8**, i8**, i8**, i8** }

@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@cl_shownet = common dso_local global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%3i: playerstate \00", align 1
@playerStateFields = common dso_local global %struct.TYPE_16__* null, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid playerState field count\00", align 1
@FLOAT_INT_BITS = common dso_local global i32 0, align 4
@FLOAT_INT_BIAS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s:%i \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s:%f \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PS_STATS\00", align 1
@MAX_STATS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"PS_PERSISTANT\00", align 1
@MAX_PERSISTANT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"PS_AMMO\00", align 1
@MAX_WEAPONS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"PS_POWERUPS\00", align 1
@MAX_POWERUPS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c" (%i bits)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_ReadDeltaPlayerstate(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @Com_Memset(%struct.TYPE_15__* %18, i32 0, i32 32)
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = bitcast %struct.TYPE_15__* %24 to i8*
  %27 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 8
  %37 = load i32, i32* @GENTITYNUM_BITS, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  br label %54

39:                                               ; preds = %23
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = mul nsw i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* @GENTITYNUM_BITS, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %39, %32
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cl_shownet, align 8
  %56 = icmp ne %struct.TYPE_18__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cl_shownet, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 2
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cl_shownet, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, -2
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %57
  store i32 1, i32* %14, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %62, %54
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** @playerStateFields, align 8
  %75 = call i32 @ARRAY_LEN(%struct.TYPE_16__* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = call i32 @MSG_ReadByte(%struct.TYPE_17__* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %73
  %85 = load i32, i32* @ERR_DROP, align 4
  %86 = call i32 @Com_Error(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %7, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @playerStateFields, align 8
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %10, align 8
  br label %89

89:                                               ; preds = %182, %87
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %187

93:                                               ; preds = %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = bitcast %struct.TYPE_15__* %94 to i32*
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32* %100, i32** %15, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = bitcast %struct.TYPE_15__* %101 to i32*
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32* %107, i32** %16, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %108, i32 1)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %93
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %16, align 8
  store i32 %113, i32* %114, align 4
  br label %181

115:                                              ; preds = %93
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %121, i32 1)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = load i32, i32* @FLOAT_INT_BITS, align 4
  %127 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %125, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i64, i64* @FLOAT_INT_BIAS, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = sitofp i32 %133 to float
  %135 = load i32*, i32** %16, align 8
  %136 = bitcast i32* %135 to float*
  store float %134, float* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %124
  br label %162

146:                                              ; preds = %120
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %147, i32 32)
  %149 = load i32*, i32** %16, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %16, align 8
  %157 = bitcast i32* %156 to float*
  %158 = load float, float* %157, align 4
  %159 = fpext float %158 to double
  %160 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %155, double %159)
  br label %161

161:                                              ; preds = %152, %146
  br label %162

162:                                              ; preds = %161, %145
  br label %180

163:                                              ; preds = %115
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %164, i32 %167)
  %169 = load i32*, i32** %16, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %16, align 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %177)
  br label %179

179:                                              ; preds = %172, %163
  br label %180

180:                                              ; preds = %179, %162
  br label %181

181:                                              ; preds = %180, %111
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 1
  store %struct.TYPE_16__* %186, %struct.TYPE_16__** %10, align 8
  br label %89

187:                                              ; preds = %89
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %7, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** @playerStateFields, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i64 %191
  store %struct.TYPE_16__* %192, %struct.TYPE_16__** %10, align 8
  br label %193

193:                                              ; preds = %215, %187
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %220

197:                                              ; preds = %193
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = bitcast %struct.TYPE_15__* %198 to i32*
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  store i32* %204, i32** %15, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = bitcast %struct.TYPE_15__* %205 to i32*
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32* %211, i32** %16, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %16, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %197
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 1
  store %struct.TYPE_16__* %219, %struct.TYPE_16__** %10, align 8
  br label %193

220:                                              ; preds = %193
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %221, i32 1)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %357

224:                                              ; preds = %220
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %225, i32 1)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %257

228:                                              ; preds = %224
  %229 = call i32 @LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %231 = load i32, i32* @MAX_STATS, align 4
  %232 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %230, i32 %231)
  store i32 %232, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %253, %228
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @MAX_STATS, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %233
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %7, align 4
  %240 = shl i32 1, %239
  %241 = and i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %237
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %245 = call i8* @MSG_ReadShort(%struct.TYPE_17__* %244)
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load i8**, i8*** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %248, i64 %250
  store i8* %245, i8** %251, align 8
  br label %252

252:                                              ; preds = %243, %237
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %233

256:                                              ; preds = %233
  br label %257

257:                                              ; preds = %256, %224
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %259 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %258, i32 1)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %290

261:                                              ; preds = %257
  %262 = call i32 @LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = load i32, i32* @MAX_PERSISTANT, align 4
  %265 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %263, i32 %264)
  store i32 %265, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %266

266:                                              ; preds = %286, %261
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @MAX_PERSISTANT, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %289

270:                                              ; preds = %266
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %7, align 4
  %273 = shl i32 1, %272
  %274 = and i32 %271, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %270
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %278 = call i8* @MSG_ReadLong(%struct.TYPE_17__* %277)
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  %281 = load i8**, i8*** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %281, i64 %283
  store i8* %278, i8** %284, align 8
  br label %285

285:                                              ; preds = %276, %270
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %266

289:                                              ; preds = %266
  br label %290

290:                                              ; preds = %289, %257
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %292 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %291, i32 1)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %323

294:                                              ; preds = %290
  %295 = call i32 @LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %297 = load i32, i32* @MAX_WEAPONS, align 4
  %298 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %296, i32 %297)
  store i32 %298, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %299

299:                                              ; preds = %319, %294
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @MAX_WEAPONS, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %299
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %7, align 4
  %306 = shl i32 1, %305
  %307 = and i32 %304, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %303
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %311 = call i8* @MSG_ReadShort(%struct.TYPE_17__* %310)
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = load i8**, i8*** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  store i8* %311, i8** %317, align 8
  br label %318

318:                                              ; preds = %309, %303
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %299

322:                                              ; preds = %299
  br label %323

323:                                              ; preds = %322, %290
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %325 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %324, i32 1)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %356

327:                                              ; preds = %323
  %328 = call i32 @LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %330 = load i32, i32* @MAX_POWERUPS, align 4
  %331 = call i32 @MSG_ReadBits(%struct.TYPE_17__* %329, i32 %330)
  store i32 %331, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %332

332:                                              ; preds = %352, %327
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @MAX_POWERUPS, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %355

336:                                              ; preds = %332
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %7, align 4
  %339 = shl i32 1, %338
  %340 = and i32 %337, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %336
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %344 = call i8* @MSG_ReadLong(%struct.TYPE_17__* %343)
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = load i8**, i8*** %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  store i8* %344, i8** %350, align 8
  br label %351

351:                                              ; preds = %342, %336
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %7, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %7, align 4
  br label %332

355:                                              ; preds = %332
  br label %356

356:                                              ; preds = %355, %323
  br label %357

357:                                              ; preds = %356, %220
  %358 = load i32, i32* %14, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %392

360:                                              ; preds = %357
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %360
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = mul nsw i32 %368, 8
  %370 = load i32, i32* @GENTITYNUM_BITS, align 4
  %371 = sub nsw i32 %369, %370
  store i32 %371, i32* %13, align 4
  br label %387

372:                                              ; preds = %360
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = sub nsw i32 %375, 1
  %377 = mul nsw i32 %376, 8
  %378 = sext i32 %377 to i64
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %378, %381
  %383 = load i32, i32* @GENTITYNUM_BITS, align 4
  %384 = sext i32 %383 to i64
  %385 = sub nsw i64 %382, %384
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %13, align 4
  br label %387

387:                                              ; preds = %372, %365
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %12, align 4
  %390 = sub nsw i32 %388, %389
  %391 = call i32 (i8*, i32, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %390)
  br label %392

392:                                              ; preds = %387, %357
  ret void
}

declare dso_local i32 @Com_Memset(%struct.TYPE_15__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Com_Printf(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_16__*) #1

declare dso_local i32 @MSG_ReadByte(%struct.TYPE_17__*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @MSG_ReadBits(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i8* @MSG_ReadShort(%struct.TYPE_17__*) #1

declare dso_local i8* @MSG_ReadLong(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
